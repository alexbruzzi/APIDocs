# Starter Kit #

Octomatic Enterprise onboarding includes a starter kit for following platforms:

- iOS
	- Objective C
	- Swift
- Android
	-	Native
	- 	Cordova

We support two major push notification services

- Apple Push Notification Service (APNS)
- Google Cloud Messaging (GCM)

The starter kit contains code for all the valid permutations of above.

Depending on the platform you have for your app and for the push notifications click on one of the following:

- [iOS, APNS (Objective C/ Swift)](iOSAPNSStarterKit.md)
- [iOS, GCM (Objective C / Swift)](iOSGCMStarterKit.md)
- [Android, GCM, Native](androidGCMStarterKit.md)
- [Android, GCM, Cordova](cordovaOctoStarterKit.md)

Additionally, we provide client libraries for following languages:

- [Clojure](downloads/clojure-client.zip)
- [Javascript](downloads/javascript-client.zip)
- [Python](downloads/python-client.zip)
- [Ruby](downloads/ruby-client.zip)

This part of the Knowledge Base will detail into the starter kit. It will cover how to set up data stream on iOS and android and explain about the coding guidelines.

## General Guidelines ##

These are very general guidelines to implement Octomatic data stream for any platform. Although the examples are specific to ios, android; they can be implemented on any system that allows for following data points.

To begin with your app should be enabled for following user permissions:

- Access location while app is running in foreground
- Able to recieve push notification from a server authenticated with your credentials. Chances are you are using one of these services:
  - Google Cloud Messaging (GCM)
      - Android
      - iOS
  - Apple Push Notification Service (APNS), iOS only
- Able to retrieve device specific details such as
  - OS Version
  - Manufacturer
  - Device Unique ID
- Able to connect to internet



