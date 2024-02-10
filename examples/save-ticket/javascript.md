
```javascript
const axios = require('axios');

const data= {
    title: 'test ticket',
    description: 'test description',
    backlogName: 'your-backlog-name',
    comment: 'test comment'
};

const apiKey='your-api-key';

axios.post('https://api.publicbacklog.com/v1/tickets/create-ticket', JSON.stringify(data), {
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
