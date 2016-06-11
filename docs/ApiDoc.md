# Octo Enterprise API

[TOC]

## Overview
Integrate with Octo Enterprise using our RESTful APIs.

### Version information
Version: 1.0.0

### URI scheme

- Host: api.octomatic.in
- BasePath: /
- Schemes: HTTP

### Consumes

* application/json


### Produces

* application/json


## Security

### <a name="apikey">apikey</a>

| Name | Value | In |
|---|---|---|
|apikey|Your Octomatic Enterprise API Key| HTTP Header|


## Paths
### Post an app init event.
```
POST /events/app.init/
```

#### Description

Event fired when app is initiated. Everytime app comes to foreground, this event should be fired with all possible values.

#### Parameters
|Type|Name|Description|Required|Schema|Default|
|----|----|----|----|----|----|
|BodyParameter|body|User ID|true|[Message](#Message)||


#### Responses
|HTTP Code|Description|Schema|
|----|----|----|
|200|Returns the UUID for the event.|[BeaconResponse](#BeaconResponse)|
|default|Unexpected Error|[Error](#Error)|


#### Tags

* events

#### curl (Mobile Device)

```bash
curl -X POST --header 'Content-Type: application/json' --header 'Accept: text/html' --header 'apikey: API_KEY' -d '{
  "userId": 2736482,
  "phoneDetails": {
    "deviceId": "FCDBD8EF-62FC-4ECB-B2F5-92C9E79AC7F9",
    "manufacturer": "Apple",
    "model": "iPhone 6",
    "latitude": 28.6139,
    "longitude": 77.209
  }
}' 'http://api.octomatic.in/events/app.init/'
```

#### curl (Desktop Web)

```bash
curl -X POST --header 'Content-Type: application/json' --header 'Accept: text/html' --header 'apikey: API_KEY' -d '{
  "userId": 2736482,
  "browserDetails": {
    "name": "chrome",
    "manufacturer": "Google",
    "platform": "Linux",
    "cookieid": "abc123"
  }
}' 'http://api.octomatic.in/events/app.init/'
```


### Post an app login event.
```
POST /events/app.login/
```

#### Description

Event fired when user logins to the app

#### Parameters
|Type|Name|Description|Required|Schema|Default|
|----|----|----|----|----|----|
|BodyParameter|body|User ID|true|[Message](#Message)||


#### Responses
|HTTP Code|Description|Schema|
|----|----|----|
|200|Returns the UUID for the event|[BeaconResponse](#BeaconResponse)|
|default|Unexpected Error|[Error](#Error)|


#### Tags

* events

#### curl (Mobile Device)

```bash
curl -X POST --header 'Content-Type: application/json' --header 'Accept: text/html' --header 'apikey: API_KEY' -d '{
  "userId": 2736482,
  "phoneDetails": {
    "deviceId": "FCDBD8EF-62FC-4ECB-B2F5-92C9E79AC7F9",
    "manufacturer": "Apple",
    "model": "iPhone 6",
    "latitude": 28.6139,
    "longitude": 77.209
  }
}' 'http://api.octomatic.in/events/app.login/'
```

#### curl (Desktop Web)

```bash
curl -X POST --header 'Content-Type: application/json' --header 'Accept: text/html' --header 'apikey: API_KEY' -d '{
  "userId": 2736482,
  "browserDetails": {
    "name": "chrome",
    "manufacturer": "Google",
    "platform": "Linux",
    "cookieid": "abc123"
  }
}' 'http://api.octomatic.in/events/app.login/'
```

### Post an app logout event.
```
POST /events/app.logout/
```

#### Description

Event fired when user logs out of the app.

#### Parameters
|Type|Name|Description|Required|Schema|Default|
|----|----|----|----|----|----|
|BodyParameter|body|User ID|true|[Message](#Message)||


#### Responses
|HTTP Code|Description|Schema|
|----|----|----|
|200|Returns the UUID for the event|[BeaconResponse](#BeaconResponse)|
|default|Unexpected Error|[Error](#Error)|


#### Tags

* events

#### curl (Mobile Device)

```bash
curl -X POST --header 'Content-Type: application/json' --header 'Accept: text/html' --header 'apikey: API_KEY' -d '{
  "userId": 2736482,
  "phoneDetails": {
    "deviceId": "FCDBD8EF-62FC-4ECB-B2F5-92C9E79AC7F9",
    "manufacturer": "Apple",
    "model": "iPhone 6",
    "latitude": 28.6139,
    "longitude": 77.209
  }
}' 'http://api.octomatic.in/events/app.logout/'
```

#### curl (Desktop Web)

```bash
curl -X POST --header 'Content-Type: application/json' --header 'Accept: text/html' --header 'apikey: API_KEY' -d '{
  "userId": 2736482,
  "browserDetails": {
    "name": "chrome",
    "manufacturer": "Google",
    "platform": "Linux",
    "cookieid": "abc123"
  }
}' 'http://api.octomatic.in/events/app.logout/'
```

### Post a page view event.
```
POST /events/page.view/
```

#### Description

Event fired when a page view happened. You should fire this event on every page change in the viewport

#### Parameters
|Type|Name|Description|Required|Schema|Default|
|----|----|----|----|----|----|
|BodyParameter|body|Page View Message|true|[PageViewMessage](#PageViewMessage)||


#### Responses
|HTTP Code|Description|Schema|
|----|----|----|
|200|Returns the UUID for the event|[BeaconResponse](#BeaconResponse)|
|default|Unexpected Error|[Error](#Error)|


#### Consumes

* application/json

#### Produces

* application/json

#### Tags

* events

#### curl (Mobile Device)

```bash
curl -X POST --header 'Content-Type: application/json' --header 'Accept: text/html' --header 'apikey: API_KEY' -d '{
  "userId": 2736482,
  "phoneDetails": {
    "deviceId": "FCDBD8EF-62FC-4ECB-B2F5-92C9E79AC7F9",
    "manufacturer": "Apple",
    "model": "iPhone 6",
    "latitude": 28.6139,
    "longitude": 77.209
  },
  "routeUrl": "/Home/DealsOfTheDay/34",
  "categories": [
    "shopping",
    "handbags",
    "rajasthani"
  ],
  "tags": [
    "handbags",
    "aldo",
    "yellow"
  ]
}' 'http://api.octomatic.in/events/page.view/'
```

#### curl (Desktop Web)

```bash
curl -X POST --header 'Content-Type: application/json' --header 'Accept: text/html' --header 'apikey: API_KEY' -d '{
  "userId": 2736482,
  "browserDetails": {
    "name": "chrome",
    "manufacturer": "Google",
    "platform": "Linux",
    "cookieid": "abc123"
  },
  "routeUrl": "/Home/DealsOfTheDay/34",
  "categories": [
    "shopping",
    "handbags",
    "rajasthani"
  ],
  "tags": [
    "handbags",
    "aldo",
    "yellow"
  ]
}' 'http://api.octomatic.in/events/page.view/'
```

### Post a product page view event.
```
POST /events/productpage.view/
```

#### Description

Event fired when a product page view happened. You should fire this event on every page change in the viewport for products. Products are anything that the consumer consumes. It could cost them money or time. This cost is the value of 'price' parameter.

#### Parameters
|Type|Name|Description|Required|Schema|Default|
|----|----|----|----|----|----|
|BodyParameter|body|User ID|true|[ProductPageViewMessage](#ProductPageViewMessage)||


#### Responses
|HTTP Code|Description|Schema|
|----|----|----|
|200|Returns the UUID for the event|[BeaconResponse](#BeaconResponse)|
|default|Unexpected Error|[Error](#Error)|


#### Tags

* events

#### curl (Mobile Device)

```bash
curl -X POST --header 'Content-Type: application/json' --header 'Accept: text/html' --header 'apikey: API_KEY' -d '{
  "userId": 2736482,
  "phoneDetails": {
    "deviceId": "FCDBD8EF-62FC-4ECB-B2F5-92C9E79AC7F9",
    "manufacturer": "Apple",
    "model": "iPhone 6",
    "latitude": 28.6139,
    "longitude": 77.209
  },
  "routeUrl": "/Home/DealsOfTheDay/34",
  "categories": [
    "shopping",
    "handbags",
    "rajasthani"
  ],
  "tags": [
    "handbags",
    "aldo",
    "yellow"
  ],
  "productId": 63726,
  "productName": "Smartphone Series S01",
  "price": 99.99
}' 'http://api.octomatic.in/events/productpage.view/'
```

#### curl (Desktop Web)

```bash
curl -X POST --header 'Content-Type: application/json' --header 'Accept: text/html' --header 'apikey: API_KEY' -d '{
  "userId": 2736482,
  "browserDetails": {
    "name": "chrome",
    "manufacturer": "Google",
    "platform": "Linux",
    "cookieid": "abc123"
  },
  "routeUrl": "/Home/DealsOfTheDay/34",
  "categories": [
    "shopping",
    "handbags",
    "rajasthani"
  ],
  "tags": [
    "handbags",
    "aldo",
    "yellow"
  ],
  "productId": 63726,
  "productName": "Smartphone Series S01",
  "price": 99.99
}' 'http://api.octomatic.in/events/productpage.view/'
```

### Update push token for a user device.
```
POST /update_push_token/
```

#### Description

Use this to update the tokens necessary for push notifications. This is exposed as a set of 3 attributes - notification type, push token and push key. Notification type should be 0 for iOS notification and 1 for android. Push token could be the GCM registration token or the APNS registration token for the app device. Push key is your app's GCM key or APN key. Userid is optional. If userid is not speficied, the gcm token is stored without a userid. If a userid gets updated for a gcm token in future, another call needs to be made mentioning the userid.

#### Parameters
|Type|Name|Description|Required|Schema|Default|
|----|----|----|----|----|----|
|BodyParameter|body|JSON object containing data|true|[UpdatePushToken](#UpdatePushToken)||


#### Responses
|HTTP Code|Description|Schema|
|----|----|----|
|200|UUID of the event. You can use this UUID to trace an event.|[BeaconResponse](#BeaconResponse)|
|default|Unexpected error|[Error](#Error)|


#### Tags

* push_notification

#### curl (only Mobile Device)

```bash
curl -X POST --header 'Content-Type: application/json' --header 'Accept: text/html' --header 'apikey: API_KEY' -d '{
  "userId": 1146783,
  "pushToken": "aKhsy762hHGSA90001S",
  "pushKey": "aksjs:posiuujslaqhwns826262XYZ",
  "notificationType": 0,
  "phoneDetails": {
    "deviceId": "FCDBD8EF-62FC-4ECB-B2F5-92C9E79AC7F9",
    "manufacturer": "Apple",
    "model": "iPhone 6",
    "latitude": 28.6139,
    "longitude": 77.209
  }
}' 'http://api.octomatic.in/update_push_token/'
```

## Definitions
### <a name="BeaconResponse">BeaconResponse</a>

Beacon response model

|Name|Description|Required|Schema|Default|
|----|----|----|----|----|
|eventId|The UUID of the event. Use this to trace the event|false|string||


### <a name="Error">Error</a>

Error model

|Name|Description|Required|Schema|Default|
|----|----|----|----|----|
|code|Error code|false|integer (int32)||
|message|Error message|false|string||


### <a name="Message">Message</a>

Base message model. Every message must belong to this model

|Name|Description|Required|Schema|Default|
|----|----|----|----|----|
|userId|Unique User Id of the logged in user. Any unique tracking ID for logged out user.|true|integer (int32)||
|phoneDetails|Phone Details of the user|true|[PhoneDetails](#PhoneDetails)||


### <a name="PageViewMessage">PageViewMessage</a>
|Name|Description|Required|Schema|Default|
|----|----|----|----|----|
|userId|Unique User Id of the logged in user. Any unique tracking ID for logged out user.|true|integer (int32)||
|phoneDetails|Phone details of the user|true|[PhoneDetails](#PhoneDetails)||
|routeUrl|Human readable unique routing Url for the page|true|string||
|categories|The categories this page belongs to|false|string array||
|tags|The tags that can be associated with the page|false|string array||


### <a name="PhoneDetails">PhoneDetails</a>

Model for phone details of the user

|Name|Description|Required|Schema|Default|
|----|----|----|----|----|
|deviceId|Unique ID of the user's device|false|string||
|manufacturer|Manufacturer of the user's device|false|string||
|model|Device Model|false|string||
|latitude|Latitude of the user's device|false|number (float)||
|longitude|Longitude of the user's device|false|number (float)||


### <a name="ProductPageViewMessage">ProductPageViewMessage</a>
|Name|Description|Required|Schema|Default|
|----|----|----|----|----|
|userId|Unique User Id of the logged in user. Any unique tracking ID for logged out user.|true|integer (int32)||
|phoneDetails|Phone details of the user|true|[PhoneDetails](#PhoneDetails)||
|routeUrl|Human readable unique routing Url for the page|true|string||
|categories|Categories this product belongs to|false|string array||
|tags|Tags that can be associated with this product|false|string array||
|productId|Unique Product ID of the product being viewed|true|integer (int32)||
|productName|Human understandable name of the product|true|string||
|price|Price of the product|true|number (float)||


### <a name="UpdatePushToken">UpdatePushToken</a>

Model for update push token message

|Name|Description|Required|Schema|Default|
|----|----|----|----|----|
|userId|Unique User Id of the user.|false|integer (int32)||
|pushToken|Push Token for the user-device. This could be either the GCM Token or the APN Token|true|string||
|pushKey|Your app's push notification key. This could be either your app's GCM key or your app's APN key.|false|string||
|notificationType|Set this to 1 for Android GCM and 0 for iOS|true|integer (int32)||
|phoneDetails|Phone details of user|true|[PhoneDetails](#PhoneDetails)||


