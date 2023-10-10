const connection = require("../database/Connection")
const { getLang, sendMessage } = require("./Message")

exports.getResponnseTicket= (message,callback) => {
    let req="INSERT INTO tickets (content,phone) values (?,?)"

    connection.query(req,[message?.text,message.from],(errors,results) => {
        if(errors) console.log(errors)

        let text = `Merci de nous avoir contacté, un téléconseiller prendra en charge votre réclamation dans les plus brefs délais.`
        getLang(message.from,({lang}) => {
            if(lang === "ar") {
                text ="شكرًا لاتصالك بنا، سيتم تعيين مستشار هاتفي لمعالجة شكواك في أقرب وقت ممكن."
            }
            return callback({text,lang})
        })
    })

}

exports.getTickets= (req,res) => {
    let query="select id,content,phone,DATE_FORMAT(created_at,'%d/%c/%Y %H:%i:%s') as created_at,status from tickets order by id desc"
    connection.query(query,(error,results) => {
        if(error) console.log(error)
        res.send({tickets:results})
  
    })
}

exports.showTicket= (req,res) => {
    let { ticketId } = req.params

    let query="select tickets.id,content,phone,DATE_FORMAT(tickets.created_at,'%d/%c/%Y %H:%i:%s') as created_at,tickets.status,message AS reply from tickets LEFT JOIN  replyTickets ON tickets.id = replyTickets.ticket_id where tickets.id= ? order by tickets.id desc "
    connection.query(query,ticketId,(error,results) => {
        if(error) console.log(error)
        res.send({ticket:results[0]})
  
    })
}

exports.replyTicket = (req,res) => {

    console.log("APP")

    const {ticketId,phone,text} = req.body;

    const option= {
        "from": "212522061150",
        "to":  phone,
        "channel": "whatsapp",
      }

    // Save The Reply
    let reqInsertReply = "insert into replyTickets (message,ticket_id) value (?,?)"

    connection.query(reqInsertReply,[text,ticketId],(error,results) => {
        if(error) return res.send("Error")
        console.log("Succes 1")
        
        sendMessage({...option,"message_type":"text","text":text});
        console.log("Succes 2")


        let reqSql ="Update tickets set status = 1 where id= ?"

        connection.query(reqSql,ticketId,(error,results) => {
            if(error) res.send("Error When Updated")
            
            console.log("Succes 3")

            res.send('Update Has Been Succely')
        }) 
    
    })

}