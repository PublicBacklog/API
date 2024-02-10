```python
import requests

api_key = 'your-api-key'

id = 1

headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'apikey': api_key
}

response = requests.post(f"https://api.publicbacklog.com/v1/tickets/get-ticket?id={id}", headers=headers)

try:
    print(response.json())
except Exception as error:
    print(error)
```