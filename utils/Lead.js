const connection = require("../database/Connection")

exports.saveLeads = (lead) => {
    
    let {profileName,from,store_id = null ,lang = "fr"} = lead

    let req="INSERT INTO leads (profile_name,phone,store_id,lang) values (?,?,?,?)"
    connection.query(req,[profileName,from,store_id,lang],(errros,results) => {
        if(errros) console.log(errros)
    })
} 