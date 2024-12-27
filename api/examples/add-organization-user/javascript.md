```javascript
const axios = require('axios');

const data= {
    email: 'your-email@email.com',
    firstName: 'test',
    lastName: 'user',|
};

const apiKey='your-api-key';

const headers = {
    headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'apikey': apiKey
    }
};

axios.post('https://api.publicbacklog.com/v1/organizationusers/add-organization-user', JSON.stringify(data), headers)
    .then(response=> {
        console.log(response.data);
    })
    .catch(error=> {
        console.error(error);
    });
```
