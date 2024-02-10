# Public Backlog API Documentation

These are the docs for our API which you can access at https://api.publicbacklog.com

### Authorization

The API authenticates via an ```apiKey``` parameter which you can find under your organization settings.

This can be passed in via the ```headers```, ```query```, or ```body``` of your requests.

### Tickets
This is probably the main endpoint set you'll be using. These endpoints control the CRUD operations for backlog tickets.
#### Save New ticket

```http
  POST /v1/tickets/save-ticket
```

| Parameter    | Type    | Required | Description                                                                                             |
| :----------- | :------ | :------- | :------------------------------------------------------------------------------------------------------ |
| title        | string  | ```Yes```      | The title field. <br />Minimum of 3 characters<br />Maximum of 250 characters                                                      |
| description  | string  | ```Yes```      | The description of the ticket. This can be either regular text or Html formatted rich text.<br/>Minimum 3 characters<br />Maximum 3000000 characters                                                                                                                                    |
| statusId     | integer | No       | The status id of the ticket. This can be any of the Request Status ids or any Bug Status ids.           |
| ticketTypeId | integer | No       | The ticket type id.<br/>This will default to `1` for `Request`                                                                                     |
| comment      | string  | No       | A comment to add additional information not necessarily a part of the description of the request/bug                                                                              |

<!-- tabs:start -->
#### **Javascript**

[javascript](examples/save-ticket/javascript.md ':include')

#### **Python**

[python](examples/save-ticket/python.md ':include')

<!-- tabs:end -->

#### Get Ticket

```http
  GET /v1/tickets/get-ticket?id=${id}
```

| Parameter | Type    | Required | Description                                 |
| :-------- | :------ | :------- | :------------------------------------------ |
| id        | integer | ```Yes```      | The id of the ticket to retrieve            |


<!-- tabs:start -->
#### **Javascript**

[javascript](examples/get-ticket/javascript.md ':include')

#### **Python**

[python](examples/get-ticket/python.md ':include')

<!-- tabs:end -->


#### Update Ticket
| Parameter | Type    | Required | Description                                 |
| :-------- | :------ | :------- | :------------------------------------------ |
| id        | integer | ```Yes```      | The id of the ticket to update            |
| title        | string  | No      | The title field. <br />Minimum of 3 characters<br />Maximum of 250 characters                                                      |
| description  | string  | No      | The description of the ticket. This can be either regular text or Html formatted rich text.<br/>Minimum 3 characters<br />Maximum 3000000 characters                                                                                                                                    |
| statusId     | integer | No       | The status id of the ticket. This can be any of the Request Status ids or any Bug Status ids.           |
| ticketTypeId | integer | No       | The ticket type id.|
| comment      | string  | No       | A comment to add additional information not necessarily a part of the description of the request/bug                                                                              |

```http
  PATCH /v1/tickets/update-ticket
```

<!-- tabs:start -->
#### **Javascript**

[javascript](examples/update-ticket/javascript.md ':include')

#### **Python**

[python](examples/update-ticket/python.md ':include')

<!-- tabs:end -->


#### Delete Ticket

```http
  DELETE /v1/tickets/delete-ticket?id=${id}
```

| Parameter | Type    | Required | Description                                 |
| :-------- | :------ | :------- | :------------------------------------------ |
| id        | integer | ```Yes```      | The id of the ticket to delete            |


<!-- tabs:start -->
#### **Javascript**

[javascript](examples/delete-ticket/javascript.md ':include')

#### **Python**

[python](examples/delete-ticket/python.md ':include')

<!-- tabs:end -->