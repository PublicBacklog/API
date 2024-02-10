```javascript
const axios = require('axios');

const apiKey='your-api-key';

const id = 1;

axios.post(`https://api.publicbacklog.com/v1/tickets/get-ticket?id=${id}`, {
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'apikey': apiKey
    }
})
    .then(response=> {
        console.log(response.data);
    })
    .catch(error=> {
        console.error(error);
    });
```
