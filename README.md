# Preside Extension: Telegram Bot

This is a simple extension for Telegram Bot based on [Telegram Bot API](https://core.telegram.org/bots/api) 
To get started, please follow the guide at [Telegram Bot API Introduction](https://core.telegram.org/bots) to create your own bot with [@BotFather](https://t.me/botfather)

Currently supported feature are:
 - Telegram Notification Service 
 - Location and Venue Notification


## Telegram Notification Service
You can assign a Channel, Group Chat or Individual Chat to receive notification from Preside's Notification Service

You will be able to select the Telegram Channels to be alerted in the specific notification settings in Preside

The default parse mode for Telegram Notification service is HTML mode 

You will need to create a telegram context for the notification ( or it will default to datatable context )

The Telegram HTML parsing is limited to [only certain HTML tags as defined in Telegram API documentation](https://core.telegram.org/bots/api#html-style)

## Location and Venue Notification

To send Location or Venue Notification using the Telegram service, you can use the function `sendLocation` and `sendVenue` in `TelegramService.cfc` 

You can specify the `longitude` and `latitude` for the Location and you can include `title` and `address` as well for Venue.

