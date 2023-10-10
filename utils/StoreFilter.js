const connection = require("../database/Connection");

exports.storeFilter = (req,res) => {

    let {type,id} = req.query;
    let columnName = ""
    switch (type) {
        case "city":
            columnName ="city_id"
            break;
       case "groupe": 
            columnName = "groupe_id"     
            break;
        case "marques": 
            columnName = "category_id"     
            break;
        default:
            columnName="city_id"
            break;
    }
    let sql =`select id , name_fr as name from stores where ${columnName} = ?`

    connection.query(sql,[id],(error,stores) => {
        if(error) {
            console.log(error)
            return res.status(500).send("Error In fetch")
        } 

        return res.send({stores})
    })
}


exports.getStores = (req,res) => {
    let sql =`select *from stores`

    connection.query(sql,(error,stores) => {
        if(error) {
            console.log(error)
            return res.status(500).send("Error In fetch")
        } 

        return res.send({stores})
    })
}
exports.getStoreById = (req,res)=> {
    let {id} = req.params
    let sql =`select *from stores where id = ? `

    connection.query(sql,id,(error,store) => {
        if(error) {
            console.log(error)
            return res.status(500).send("Error In fetch")
        } 

        return res.send({store:store[0]})
    })
}

exports.groupes=(req,res) => {
    connection.query("select * from groupes",(error,groupes) => {
        if(error) return res.status(500).send('Error In Fetch')
        
        return res.send({groupes})
    })

}

exports.marques=(req,res) => {
    connection.query("select id,name from categories",(error,marques) => {
        if(error) return res.status(500).send(error)
        
        return res.send({marques})
    })

}
