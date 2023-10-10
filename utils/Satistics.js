const connection = require("../database/Connection");

exports.statistics = (req,res) => {

    let resultByDays = `SELECT
    SUM(CASE WHEN DATE(created_at) = CURDATE() THEN 1 ELSE 0 END) AS today_count,
    SUM(CASE WHEN DATE(created_at) = CURDATE() - INTERVAL 1 DAY THEN 1 ELSE 0 END) AS yesterday_count,
    SUM(CASE WHEN YEAR(created_at) = YEAR(CURDATE()) AND MONTH(created_at) = MONTH(CURDATE()) THEN 1 ELSE 0 END) AS this_month_count,
    SUM(CASE WHEN YEAR(created_at) = YEAR(CURDATE()) THEN 1 ELSE 0 END) AS this_year_count
    FROM messages;`;


    let tickets_count = "select count(*) as total from tickets"

    let stats = "select sum(pdf_count) as pdf_count , sum(location_count) as location_count from stores";

    connection.query(resultByDays,(errors,results) => {
        if(errors) return  res.status(404).send("Not Found")

        connection.query(tickets_count,(errors,ticketsCount) => {
            if(errors)  return res.status(404).send("Not Found")

            connection.query(stats,(errors,stats)=> {
                if(errors)  return res.status(404).send("Not Found")

                console.log(stats)
              
                res.send({
                    today:results[0].today_count,
                    yesteday : results[0].yesterday_count,
                    thisMonth : results[0].this_month_count,
                    thisYear : results[0].this_year_count,
                    locationCount:stats[0].location_count,
                    pdfCount:stats[0].pdf_count,
                    ticketsReports:ticketsCount[0].total,
                    brodcast:"0"
                })
            })


            
        })
    })



}