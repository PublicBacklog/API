```javascript
const axios = require('axios');

const apiKey='your-api-key';

const id = 1;

const headers = {
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'apikey': apiKey
    }
};

axios.post(`https://api.publicbacklog.com/v1/tickets/get-ticket?id=${id}`, headers)
    .then(response=> {
        console.log(response.data);
    })
    .catch(error=> {
        console.error(error);
    });
```
