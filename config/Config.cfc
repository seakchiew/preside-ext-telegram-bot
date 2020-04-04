/**
 * @dataManagerGroup telegram
 *
 */

component {

	public void function configure( required struct config ) {
		var conf     = arguments.config;
		var settings = conf.settings ?: {};


		_setupTelegramFeatures( settings );

		_setupEnums( settings );

		_setupInterceptors( conf ) 
	}

	private void function _setupTelegramFeatures( settings ) {
		settings.features.telegramNotification        = { enabled=true };
	}

	private void function _setupEnums( settings ) {
		settings.enum.telegramChatType        = [ "group", "channel", "chat" ];
	}

	

	private void function _setupInterceptors( conf ) output=false {
		if( conf.settings.features.telegramNotification.enabled ?:false  ) 
			conf.interceptors.append( { class="app.extensions.preside-ext-telegram-bot.interceptors.TelegramNotificationInterceptor",                properties={} } );
	}
	

}
