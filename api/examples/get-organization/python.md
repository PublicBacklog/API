```python
import requests

api_key = 'your-api-key'

headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'apikey': api_key
}

response = requests.get('https://api.publicbacklog.com/v1/organizations/get-organization', headers=headers)

try:
    print(response.json())
except Exception as err:
    print(err)
```