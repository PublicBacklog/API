```javascript
const axios = require('axios');

const apiKey='your-api-key';

const backlogName = 'your-backlog-name';

const headers = {
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'apikey': apiKey
    }
};

axios.get(`https://api.publicbacklog.com/v1/backlogs/get-backlog?backlogName=${backlogName}`, headers)
    .then(response => {
        console.log(response.data);
    }).catch(err => {
        console.error(err);
    });
```
