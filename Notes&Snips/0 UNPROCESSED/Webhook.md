https://codeburst.io/what-are-webhooks-b04ec2bf9ca2

Resource light way to implement event reactions.

AKA Web callback AKA HTTP push API AKA Reverse APIs

Proivde a mechanism whereby a server-side application can notify a client-side app when a new event has occurred.

Drawback is difficulty with setting them up.


CONSUMING a WEBHOOK - as a CLIENT

The Server API calls the CLINET - hence "reverse" API.

First step in consuming a webhook is giving webhook provider a URL to deliver the requests to (endpoint?).

Majority of webhooks will POST data to you either JSON or XML or form data.

Webhooks are mainly asynchronous.

Debugging
RequestBin to collect webhook results.
Mock requests cURL or Postman
Test code on machine with ngrok
Watch flow using Runscope

Webhooks tend to make a lot of requests!


Webhook services

SendGrid – We deliver event data and even parse emails through our webhooks.
Twilio – Twilio both delivers and reacts to phone calls and text messages using webhooks.
Github – Github updates applications about repositories and actions taken upon them through webhooks.
Foursquare – Foursquare notifies applications when users checkin using their webhook.