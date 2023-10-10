const connection = require("../database/Connection");

exports.listCities = (req,res) => {
    connection.query("select *from cities",(error,cities) => {
        if(error) res.status(500).send('Error')

        res.send({cities})
    })
}