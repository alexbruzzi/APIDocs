# Architecture & Concepts #

In it's simplest form, the enterprise creates a **data stream** of events from their end to Octomatic's end. This data stream is consumed and transformed into Octomatic's intelligence. This intelligence powers certain actions like - sending push notification to a user.

[TOC]

## Data Stream ##

A data stream is an infinite stream of events. These events would typically include user actions like login, logout, pageview etc. Like any stream has one origin and one endpoint. The origin lies on the mobile app/web of the enteprise, while the endpoint is maintained by Octomatic.

### Endpoint ###

Octomatic provides two endpoints.

- Sandbox : For all the development needs
- Production : For all the production environment.

These are RESTful endpoints. The endpoints are authenticated using an **API KEY**. 

A typical request to an endpoint would include api key, body json data. A typical response from an endpoint include a json data.

### Origin ###

The origin lies at places where an event happens. Typically this would be in the mobile apps, websites where users do certain activity.

There are specific API calls which takes input json data in a specific format. You'll find more details on API in the API section.



## Actions ##

Actions are actions that Octomatic takes on an enterprise's behalf. These actions are powered by the intelligence derived from Data Stream of events.

### Push Notification ###

Octomatic sends push notifications on enterprise's behalf. Hence, it needs to be aware of Google Cloud Messaging (GCM) or Apple Push Notification Service (SSL) authentication credentials.

## Products ##

It is worthy mentioning the concept of product. Product is anything a consumer consumes. It could be a video that is watched by the user. It could be a blog post read by the user. It could be a materialistic object purchased by the user. Or it could be a game that is played by the user. You can define any product based on your business needs.

### Price ###

Each product must have a price associated with it. The price could be either

- Time
- Money

Basically, price is the quantity of a unit that user spends in order to consume the product.

If it is a blog article, the users pay a price in time consuming the article.

If it is a materialistic thing, the users pay a price in money consuming the product.

## Page ##

Any page that is **NOT** a product page is a page.
