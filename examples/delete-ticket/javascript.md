```javascript
const axios = require('axios');

const id = 1;

const apiKey='your-api-key';

const headers = {
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'apikey': apiKey
    }
};

axios.delete(`https://api.publicbacklog.com/v1/tickets/delete-ticket?id=${id}`, headers)
    .then(data => {
        console.log(data.data);
    })
    .catch(err => { 
        console.error(err) 
    });
```