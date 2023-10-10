var cors = require('cors')
const express = require('express')
const { listCities } = require('./utils/Cities')
const { storeFilter, groupes, marques, getStores, getStoreById } = require('./utils/StoreFilter')
const { login } = require('./utils/User')
const { authenticateToken } = require('./middlewares/getUser')
const { upload, getCatalogs } = require('./utils/Catalogue')
const { getTickets, showTicket, replyTicket } = require('./utils/Ticket')
const connection = require('./database/Connection')
const { statistics } = require('./utils/Satistics')
const app = express()
app.use(express.json())
app.use(express.static('public/upload'));
 
app.use(cors())

app.post('/api/login',login)

app.get('/api/cities',listCities)

app.get('/api/stores',storeFilter)

app.get('/api/horaires',getStores)

app.get("/api/store/:id",getStoreById)

app.get('/api/groupes',groupes)

app.get('/api/marques',marques)

app.post('/api/upload',upload)

app.get('/api/catalogs',getCatalogs)

app.get('/api/tickets',getTickets)

app.get('/api/tickets/:ticketId',showTicket)

app.post("/api/reply-ticket",replyTicket)

app.get("/api/faq",(req,res) => {
    connection.query("select *from faq",(err,result) => {
        if(err) return res.send([])

        res.send({faq:result})
    })
})
app.get("/api/faq/:id",(req,res) => {
    let {id} = req.params
    connection.query("select *from faq where id = ?",id,(err,result) => {
        if(err) return res.send([])

        res.send({faq:result[0]})
    })
})

app.post('/add',authenticateToken,(req,res) => {
    res.send("HelloWOlrd")
})

app.get("/api/statistics",statistics)

app.listen(4000,()=> {console.log("App Started In Runing !! ")})