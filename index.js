require('dotenv').config()
const app = require('./config/app');
const port = process.env.PORT || 8081;


const server = app.listen(port,()=>{
    console.log(`Apps is running on port: ${port}`);
})
