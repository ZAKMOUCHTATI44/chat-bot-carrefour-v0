const connection = require("../database/Connection")
const { getLang, getLastMessage } = require("./Message")

exports.getMessageLocation = (phone,callback) => {
    let req="select latitude,longitude from messages where from = ?"

    connection.query(req,phone,(erros,results) => {

        getLang(phone,({lang}) => {
            if(lang === "ar") {
                return callback(`يرجى مشاركة موقعك معنا📍`)
            }
            return callback(`Merci de nous partager votre localisation📍`)
        })
    })

}

exports.getLocation = (phone,callback) => {

    let req="select latitude,longitude from messages where `from` = ? and type = 'location' and created_at >= DATE_SUB(NOW(), INTERVAL 1 DAY) ORDER BY id DESC LIMIT 1"
    connection.query(req,phone,(erros,results) => {
        if(erros) console.log(erros)

        console.log(results)

        callback(results[0])
    })
}