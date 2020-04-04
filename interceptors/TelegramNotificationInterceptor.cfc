component extends="coldbox.system.Interceptor" output=false {
	property name="notificationService"              inject="delayedInjector:notificationService";
	property name="telegramService"                  inject="delayedInjector:telegramService";

	public void function configure() output=false {}

	public void function postCreateNotification( event, interceptData ) output=false {

		var telegramChats = TelegramService.getTelegramChatsByNotificationTopic(topic = arguments.interceptData.topic);

		var result = "";



		for (var chat in telegramChats){
			result = TelegramService.sendNotification( 
							  topic=arguments.interceptData.topic
							, telegramChat=chat.telegram_chat
							, data = arguments.interceptData.data
						);

			writeDump(result);
		}

		abort;
	}

}