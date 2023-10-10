var connection = require('../database/Connection');
const { getLang } = require('./Message');

exports.searchByLocation=async (latitude,longitude,callback) => {

    let sqlQuery ="SELECT name_fr,name_ar,id,( 6371 * acos( cos( radians(?) ) * cos( radians( latitude ) ) * cos( radians( longitude ) - radians(?) ) + sin( radians(?) ) * sin( radians( latitude ) ) ) ) AS distance FROM stores ORDER BY distance ASC LIMIT 10"
    connection.query(sqlQuery,[latitude,longitude,latitude],function(error,results,fields) {
        if(error) console.log(error)
        callback(results)
    })
}

exports.sendStores=(phone,stores,type,callback) => {
  getLang(phone,({lang}) => {
    let rows = stores.map((store)=> {
        return {
            "id":`${type}${store.id}`,
            "title": " ",
            "description": store.name_fr
            // "description": lang === "ar" ? store.name_ar : store.name_fr
  
        }
    })
    
    let custom={
        "type": "interactive",
        "interactive": {
          "type": "list",
          "header": {
            "type": "text",
            "text": lang === "ar" ? "كارفور" : "Carrefour"
          },
          "body": {
            "text": lang === "ar" ? "اختر متجر كارفور الاقرب إليك" : "Voici les magasins les plus proches de chez vous , choisissez le vôtre"
          },
          "action": {
            "button": lang === "ar" ? "خيارات" :"Options",
            "sections": [
              {
                    "title": lang === "ar"  ? "هنا متاجرك:" : "Voici vos magasins :",
                    "rows": rows
                  },
                ]
              }
            }
          }
    
    return callback(custom)
  })


}

exports.sendLocationStore=(phone,id,store,callback) => {
    getLang(phone,({lang}) => {


      let sqlQuery="select *from stores where id = ? and name_fr = ?";
  
      connection.query(sqlQuery,[id,store],function(error,results,fields) {
          if(error) console.log(error)
          let custom= {
              "type": "location",
              "location": {
                "longitude":results[0].longitude,
                "latitude": results[0].latitude,
                "name": results[0].name_fr,
                "address": results[0].street_address
              }
          }
          
          callback({store : custom,lang})

          connection.query("update stores set location_count = location_count+1 where id = ? ",[id],(err,res) => {
            if(err) console.log("err")
            console.log("Succes ING")
          })

      })
    })


}

exports.getCategories=(phone,callback) => {
  let columnName="name"  
  getLang(phone,({lang}) => {
      if(lang === "ar") {
        columnName="name_ar"
      }
      let sql=`select id,${columnName} as name from categories`;
      connection.query(sql,(error,results,fields) => {
      if(error) console.log(error) 

      callback({categories:results,lang});
    })

  })
}


exports.sendListPage=(categories,lang) => {
    let rows = categories.map(({name,id}) => {
      return {
        "id":`followPage${id}`,
        "title":name,
        "description":" ",
      }
    })
    let custom={
      "type": "interactive",
      "interactive": {
        "type": "list",
        "header": {
          "type": "text",
          "text": lang === "ar" ? "كارفور" : "Carrefour"
        },
        "body": {
          "text":lang === "ar" ? "الرجاء اختيار واحدة من علاماتنا التجارية" : "Veuillez sélectionner l’une de nos enseignes"
        },
        "action": {
          "button": lang === "ar" ? "خيارات" :"Options",
          "sections": [
            {
                  "title": lang === "ar" ? "اختار:" :"Choisir:",
                  "rows": rows
                },
              ]
            }
          }
    }

  return custom

}


exports.getSocailMediaLinks=(phone,category_id,callback)=>{
  let columnName="name"
  getLang(phone,({lang}) => {
    if(lang === "ar") {
      columnName = "name_ar"
    }
    let sql = `select id,${columnName} as name,facebook_link,tiktok_link,instagram_link,web_site_link from categories where id = ?`;
  
    connection.query(sql,category_id,(error,results,fields) => {
      if(error) console.log(error)
  
      let text=`Ci-dessous les liens vers nos pages ${results[0].name} .\n \n`;
      if( lang === "ar" ) {
        text=`أدناه هي الروابط إلى صفحاتنا ${results[0].name}.\n \n`
      }

      if(results[0].facebook_link) {
        text+=` ${lang === "ar" ? "الفيسبوك" :"Facebook" } : ${results[0].facebook_link} \n`
      }
  
      if(results[0].tiktok_link) {
        text+=`${lang === "ar" ? "تيك توك" :"Tiktok" } : ${results[0].tiktok_link} \n`
      }
  
      if(results[0].instagram_link) {
        text+=`${lang === "ar" ? "الانستغرام":"Instagram" }  : ${results[0].instagram_link} \n`
      }

      if( lang === "ar" ) {
        text +=`أدناه هي الرابط إلى موقع إلكتروني ${results[0].name}.\n \n`
      }else {
        text +=`\n\n Afin d'accéder au site web ${results[0].name} ,nous vous invitons à appuyer sur le lien ci-dessous.\n`;
      }

      if(results[0].web_site_link) {
        text+= results[0].web_site_link
      }

      callback({text,lang});
    })
  })

}

exports.sendCatalogue=(phone,id,store,callback) => {

  getLang(phone,({lang}) => {

    let req="select *from leads where phone = ? AND store_id IS NOT NULL"

    connection.query(req,[phone],(errors,results) => {
      if(errors) console.log(errors)
      if(results.length <= 0) {
        let sqlQuery="select *from stores where id = ? and name_fr = ?";
        connection.query(sqlQuery,[id,store],function(error,results,fields) {
            if(error) console.log(error)
            let custom = {
              "type": "interactive",
              "interactive": {
                "type": "button",
                "body": {
                    "text":lang === "ar" ? "استمتع بالعروض لا تُقاوم في متجر كارفور الخاص بك 😍:" : "Profitez des offres imbattables dans votre magasin Carrefour 😍: "
                },
                "action": {
                    "buttons": [
                        {
                            "type": "reply",
                            "reply": {
                                "id": `btn-follow${id}`,
                                "title": lang === "ar" ? "استلام القادم" : "Recevoir le prochain"
                            }
                        },
                    ]
                }
              }
            }
            
            
            connection.query("update stores set pdf_count = pdf_count+1 where id = ? ",[id],(err,res) => {
              if(err) console.log("err")
              console.log("Succes ING")
            })

            return callback({button :custom,lang})
            
        
         
         
         })

        


      }else {
        return callback({button :null ,lang})
      }



    })
    
  })


}

exports.getTimeWorking= (phone,callback) => {
  let text="Nos magasins sont ouverts chaque jour de 9h00 à 18h30 et  de 19h30–23h00"

  getLang(phone,({lang}) => {
    if (lang === "ar") {
      text = "يتم فتح متاجرنا كل يوم من الساعة 9:00 صباحًا حتى الساعة 6:30 مساءً، ومن الساعة 7:30 مساءً حتى الساعة 11:00 مساءً."
    }

    return callback({text,lang})
  })
}