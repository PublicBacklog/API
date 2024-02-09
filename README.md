# Public Backlog API Documentation

These are the docs for our API which you can access at https://api.publicbacklog.com

## API Reference

#### Save new ticket

```http
  POST /v1/tickets/save-ticket
```

| Parameter    | Type    | Description                                                                                             |
| :----------- | :------ | :------------------------------------------------------------------------------------------------------ |
| apiKey       | string  | Required. Your API key                                                                                  |
| title        | string  | Required. The title of the ticket                                                                       |
| description  | string  | Required. The description of the ticket                                                                 |
| statusId     | integer | Optional. The status Id of the ticket. This can be any of the Request Status Ids or any Bug Status Ids. |
| ticketTypeId | integer | Optional. The ticket type Id.                                                                           |
| comment      | string  | Optional. A comment for the ticket                                                                      |

#### Get item

```http
  GET /v1/tickets/get-ticket?id=${id}
```

| Parameter | Type    | Description                                 |
| :-------- | :------ | :------------------------------------------ |
| apiKey    | string  | Required. Your API key                      |
| id        | integer | Required. The Id of the ticket to retrieve |
