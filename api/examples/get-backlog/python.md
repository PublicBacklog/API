```python
import requests

api_key = 'your-api-key'

backlog_name = 'your-backlog-name'

headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'apikey': api_key
}

response = requests.get(f'https://api.publicbacklog.com/v1/backlogs/get-backlog?backlogName={backlog_name}', headers=headers)

try:
    print(response.json())
except Exception as err:
    print(err)
```