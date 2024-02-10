```javascript
const axios = require('axios');

const apiKey = 'your-api-key';

const data = { 
    id: 1, 
    description: 'this is a new updated test description', 
    comment: 'comment 2' 
};

const headers = {
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'apikey': apiKey
    }
};

axios.patch('https://api.publicbacklog.com/v1/tickets/update-ticket', data, headers)
    .then(response => {
        console.log(response.data.id);
    })
    .catch(err => {
        console.error(err);
    })
```