```python
import requests
import json

data = {
    "title": "test ticket",
    "description": "test description",
    "backlogName": "your-backlog-name",
    "comment": "test comment"
}

api_key = 'your-api-key'

url = 'https://api.publicbacklog.com/v1/tickets/create-ticket'

headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'apikey': api_key
}

response = requests.post(url, data=json.dumps(data), headers=headers)

try:
    response.raise_for_status()
    print(response.json())
except requests.exceptions.HTTPError as err:
    print(err)
except Exception as err:
    print(err)
```