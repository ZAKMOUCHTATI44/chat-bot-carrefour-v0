var cors = require('cors')
const express = require('express')
const { listCities } = require('./utils/Cities')
const app = express()
app.use(express.json())
 
app.use(cors())

app.get('/cities',listCities)

app.listen(4000,()=> {console.log("App Started In Runing !! ")})