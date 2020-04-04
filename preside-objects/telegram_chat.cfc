/**
 * @dataManagerGroup telegram
 *
 */

 component {
	property name="telegram_chat_type"  enum="telegramChatType" required=true;
	property name="telegram_chat_id" dbtype="varchar" required="true";
	property name="telegram_bot" relationship="many-to-one" relatedto="telegram_bot" ;
}