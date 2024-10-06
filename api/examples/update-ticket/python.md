```python
import requests

api_key = 'your-api-key'

data = { 
    'id': 1, 
    'description': 'this is a new updated test description', 
    'comment': 'comment 2' 
}

headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'apikey': api_key
}

response = requests.patch('https://api.publicbacklog.com/v1/tickets/update-ticket', json=data, headers=headers)

try:
    print(response.json()['id'])
except Exception as e:
    print(e)
```