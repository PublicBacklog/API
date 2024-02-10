```python
import requests

id = 1

api_key = 'your-api-key'

headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'apikey': api_key
}

response = requests.delete(f'https://api.publicbacklog.com/v1/tickets/delete-ticket?id={id}', headers=headers)

try:
    print(response.json())
except Exception as err:
    print(err)
```