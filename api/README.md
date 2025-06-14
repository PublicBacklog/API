### Overview

These are the docs for our API which you can access at https://api.publicbacklog.com

### Authorization

The API uses an `apiKey` for authentication, found in your [Organization]() settings. An `apiKey` is tied to your Organization and grants access to any [Backlog]() it owns.

If you haven’t generated an API key yet, follow [this link]() for setup instructions.

Pass the key in the `headers` of your requests.


### Tickets

These are the primary endpoints for managing Backlog tickets. They handle all CRUD operations.

#### Save New ticket

```http
  POST /v1/tickets/save-ticket
```

| Parameter    | Type    | Required | Description                                                                                                                                       |
| :----------- | :------ | :------- | :------------------------------------------------------------------------------------------------------------------------------------------------ |
| title        | string  | ``Yes``  | The title field.<br />Minimum of 3 characters<br />Maximum of 250 characters                                                                      |
| description  | string  | ``Yes``  | The description of the ticket. This can be either regular text or Html formatted rich text.``Minimum 3 characters<br />Maximum 3000000 characters |
| statusId     | integer | No       | The status id of the ticket. This can be any of the Request Status ids or any Bug Status ids.                                                     |
| ticketTypeId | integer | No       | The ticket type id.``This will default to `1` for `Request`                                                                                       |
| comment      | string  | No       | A comment to add additional information not necessarily a part of the description of the request/bug                                              |

<!-- tabs:start -->

#### **Javascript**

[javascript](examples/save-ticket/javascript.md ":include")

#### **Python**

[python](examples/save-ticket/python.md ":include")

<!-- tabs:end -->

#### Get Ticket

```http
  GET /v1/tickets/get-ticket?id=${id}
```

| Parameter | Type    | Required | Description                      |
| :-------- | :------ | :------- | :------------------------------- |
| id        | integer | ``Yes``  | The id of the ticket to retrieve |

<!-- tabs:start -->

#### **Javascript**

[javascript](examples/get-ticket/javascript.md ":include")

#### **Python**

[python](examples/get-ticket/python.md ":include")

<!-- tabs:end -->

#### Update Ticket

| Parameter    | Type    | Required | Description                                                                                                                                       |
| :----------- | :------ | :------- | :------------------------------------------------------------------------------------------------------------------------------------------------ |
| id           | integer | ``Yes``  | The id of the ticket to update                                                                                                                    |
| title        | string  | No       | The title field.<br />Minimum of 3 characters<br />Maximum of 250 characters                                                                      |
| description  | string  | No       | The description of the ticket. This can be either regular text or Html formatted rich text.``Minimum 3 characters<br />Maximum 3000000 characters |
| statusId     | integer | No       | The status id of the ticket. This can be any of the Request Status ids or any Bug Status ids.                                                     |
| ticketTypeId | integer | No       | The ticket type id.                                                                                                                               |
| comment      | string  | No       | A comment to add additional information not necessarily a part of the description of the request/bug                                              |

```http
  PATCH /v1/tickets/update-ticket
```

<!-- tabs:start -->

#### **Javascript**

[javascript](examples/update-ticket/javascript.md ":include")

#### **Python**

[python](examples/update-ticket/python.md ":include")

<!-- tabs:end -->

#### Delete Ticket

```http
  DELETE /v1/tickets/delete-ticket?id=${id}
```

| Parameter | Type    | Required | Description                    |
| :-------- | :------ | :------- | :----------------------------- |
| id        | integer | ``Yes``  | The id of the ticket to delete |

<!-- tabs:start -->

#### **Javascript**

[javascript](examples/delete-ticket/javascript.md ":include")

#### **Python**

[python](examples/delete-ticket/python.md ":include")

<!-- tabs:end -->

### Organization

#### Get Organization

This endpoint will allow you to get the organization that owns this API key

| Parameter | Type   | Required | Description                              |
| :-------- | :----- | :------- | :--------------------------------------- |
| apiKey    | string | ``Yes``  | The API key required for authentication. |

<!-- tabs:start -->

#### **Javascript**

[javascript](examples/get-organization/javascript.md ":include")

#### **Python**

[python](examples/get-organization/python.md ":include")

<!-- tabs:end -->

### Organization User

#### Add Organization User

This endpoint retrieves the Organization associated with the provided API key.

| Parameter | Type   | Required | Description                                         |
| :-------- | :----- | :------- | :-------------------------------------------------- |
| apiKey    | string | ``Yes``  | The API key required for authentication.            |
| email     | string | ``Yes``  | The email for the organization user you wish to add |
| firstName | string | ``Yes``  | Users first name                                    |
| lastName  | string | No       | Users last name                                     |


<!-- tabs:start -->

#### **Javascript**

[javascript](examples/add-organization-user/javascript.md ":include")

#### **Python**

[python](examples/add-organization-user/python.md ":include")

<!-- tabs:end -->

### Backlog

#### Get Backlog

```http
  GET /v1/backlogs/get-backlog?backlogName=${backlogName}
```

This endpoint retrieves details about a specific Backlog using the `backlogName`

| Parameter   | Type   | Required   | Description              |
| :---------- | :----- | :--------- | :----------------------- |
| backlogName | string | ``Either`` | The name of the backlog. |

<!-- tabs:start -->

#### **Javascript**

[javascript](examples/get-backlog/javascript.md ":include")

#### **Python**

[python](examples/get-backlog/python.md ":include")

<!-- tabs:end -->
