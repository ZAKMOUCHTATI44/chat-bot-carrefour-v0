const bcrypt = require('bcryptjs');

bcrypt.hash("carrefour2023",10)
.then(res => console.log(res))
.catch(err=>console.log(err))