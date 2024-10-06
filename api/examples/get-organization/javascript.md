```javascript
const axios = require('axios');

const apiKey='your-api-key';

const headers = {
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'apikey': apiKey
    }
};


axios.get('http://localhost:5000/v1/organizations/get-organization', headers)
    .then(response => {
        console.log(response.data);
    }).catch(err => {
        console.error(err);
    });
```