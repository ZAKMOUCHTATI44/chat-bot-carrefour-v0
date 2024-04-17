const express=require("express")
const app=express()
require('dotenv').config()

// Utils 
const {sendMessage, saveMessage, getLastMessage, sendPDF, statusMessage, jobOffre, creditElectro, getMessageSubcriber, getLang, paimentMode} = require('./utils/Message')
const {welcomeMessage, defaultMessage, listOptions, buttonMenu, backToMenu}= require('./utils/default')
const { visitWebSite, programmeFid, bringo, reclamation } = require("./utils/Options")
const { searchByLocation, sendStores, sendLocationStore, sendListPage, getCategories, getSocailMediaLinks, sendCatalogue, getTimeWorking } = require("./utils/Stores")
const { getResponnseTicket } = require("./utils/Ticket")
const { saveLeads } = require("./utils/Lead")
const { getMessageLocation, getLocation } = require("./utils/Step1")

app.use(express.json())
app.use(express.urlencoded({ extended: true }));
app.use(express.static('public'));


app.get("/api-chat-bot",(req,res) => {
    res.send("HELLO WORLD ");
})

app.post('/api-chat-bot',async (req,res)=> {
  let message  = req.body

  console.log(message)

  const option= {
    "from": message.to,
    "to":  message.from,
    "channel": "whatsapp",
  }
  getLastMessage((lastMessage)=> {
    if(lastMessage.body === "option5" && lastMessage.from === message.from && Math.floor((new Date() - lastMessage?.created_at ) / 300 )) {
      getResponnseTicket(message,({text,lang}) => {

        sendMessage({...option,"message_type": "text","text": text})
        setTimeout(() => {
          sendMessage({...option,"message_type": "custom","custom": buttonMenu(lang) })
        }, 5000);

      })
    }else {
      switch (message.message_type) {
        case "location":
            let {lat,long} = message?.location
            searchByLocation(lat,long,(stores)=> {
              let type = "location"
              if(lastMessage.body === "option2" && lastMessage.from === message.from ) {
                  type ="pdf"
              }else if (lastMessage.body === "option9" && lastMessage.from === message.from) {
                type="time"
              }else {
                type="location"
              }
              sendStores(message.from,stores,type,(msg) => {
                sendMessage({...option,"message_type": "custom","custom": msg })
              })
            })
        break;
        case "reply":
          let {id , title,description} = message?.reply
          if(id.includes('followPage')) {
            getSocailMediaLinks(message.from,id.replace('followPage',''),({text,lang}) => {
              sendMessage({...option,"message_type":"text","text":text})
              setTimeout(() => {
                sendMessage({...option,"message_type": "custom","custom": buttonMenu(lang) })
              }, 5000);
            })
          }else if (id.includes('location')) {

            sendLocationStore(message.from,id.replace('location','') , description,({store,lang}) => {
              sendMessage({...option,"message_type": "custom","custom": store })
              setTimeout(() => {
                sendMessage({...option,"message_type": "custom","custom": buttonMenu(lang) })
              }, 5000);
            })
          } else if (id.includes('time')) {
            getTimeWorking(message.from,({text,lang}) => {
              
              sendMessage({...option,"message_type": "text","text": text})
              
              setTimeout(() => {

                sendMessage({...option,"message_type": "custom","custom": buttonMenu(lang) })
              
              }, 5000);
            })

          }else if(id.includes('pdf'))  {

            sendCatalogue(message.from,id.replace('pdf',''),description,({button,lang}) => {

              http://3.83.151.213/api-chat-bot/Nos%20Catalogues%20-%20Carrefour%20Market.pdf
              const media="./public/Nos Catalogues - Carrefour Market.pdf"
              // sendMessage({...option,"message_type": "file","file": {"url": media}})
              sendMessage({...option,"message_type": "file","file": {"url": media,caption:"Nos Catalogues - Carrefour Market.pdf"}})
              
              setTimeout(() => {
                if(button) {
                  sendMessage({...option,"message_type": "custom","custom": button })
                }
              },3000)
              
              setTimeout(() => {
                sendMessage({...option,"message_type": "custom","custom": buttonMenu(lang) })
              }, 8000);
            })
          }else if (id.includes('btn-follow')) {
            let store_id=id.replace('btn-follow','')
            
            getMessageSubcriber(message.from,({text,lang}) => {

              sendMessage({...option,"message_type": "text","text": text})

              // setTimeout(() => {
              //   sendMessage({...option,"message_type": "custom","custom": buttonMenu(lang) })
              // }, 5000);
              
              saveLeads({profileName:message.profile.name,from:message.from,store_id:store_id,lang})
            
            })
            
          }else if (id.includes('btn-lang-fr')) {
            
            saveLeads({profileName:message.profile.name,from:message.from})
            sendMessage({...option,"message_type": "custom","custom": listOptions("fr") })

          }else if (id.includes('btn-lang-ar')) {
            saveLeads({profileName:message.profile.name,from:message.from,lang:"ar"})
            
            sendMessage({...option,"message_type": "custom","custom": listOptions("ar") })
          }else if(id.includes('menu-default')) {
            getLang(message.from,({lang}) => {
                sendMessage({...option,"message_type": "custom","custom": backToMenu(lang) })
            })

          }else if (id.includes('option') ) {
            let step = id.replace('option','')
              console.log(`Step ${step}`)
            switch (step) {
              case "1":
                getLocation(message.from,(location) => {
                  if(location) {
                    let {latitude,longitude} = location
                    searchByLocation(latitude,longitude,(stores)=> {
                      let type = "location"
                      sendStores(message.from,stores,type,(msg) => {
                        sendMessage({...option,"message_type": "custom","custom": msg })
                      })
                    })

                  }else {
                    getMessageLocation(message.from,(msg) => {
                      sendMessage({...option,"message_type": "text","text":msg })
                    })
                  }
                })
                break;
              
              case "2":
                getLocation(message.from,(location) => {
                  if(location) {
                    let {latitude,longitude} = location
                    console.log("Last Message Is : ",lastMessage)
                    searchByLocation(latitude,longitude,(stores)=> {
                      let type ="pdf"
                      sendStores(message.from,stores,type,(msg) => {
                        sendMessage({...option,"message_type": "custom","custom": msg })
                      })
                    })

                  }else {
                    getMessageLocation(message.from,(msg) => {
                      sendMessage({...option,"message_type": "text","text":msg })
                    })
                  }
                })
                  break;
              case "3":
                  visitWebSite(message.from,({text,lang}) => {
                      sendMessage({...option,"message_type": "text","text": text})
                      setTimeout(() => {
                        sendMessage({...option,"message_type": "custom","custom": buttonMenu(lang) })
                      }, 5000);
                  })
                break;
              case "4":
                    getCategories(message.from,({categories,lang})=> {
                      sendMessage({...option,"message_type": "custom","custom": sendListPage(categories,lang)})
                    })
                  break;
              case "5":
                reclamation(message.from , ({text}) => {
                  sendMessage({...option,"message_type": "text","text": text })
                })
                
              break;      
              case "6":
                bringo(message.from,({text,lang}) => {
                  sendMessage({...option,"message_type": "text","text": text })
                  setTimeout(() => {
                     sendMessage({...option,"message_type": "custom","custom": buttonMenu(lang) })
                  }, 5000);

                })
               break;  
               case "7":
                programmeFid(message.from,({text,lang}) => {
                  sendMessage({...option,"message_type": "text","text": text})
                  setTimeout(() => {
                   sendMessage({...option,"message_type": "custom","custom": buttonMenu(lang) })
                 }, 5000);
                })
              break;
              case "8":
                jobOffre(message.from,({text,lang}) => {
                  sendMessage({...option,"message_type": "text","text": text})
                  setTimeout(() => {
                   sendMessage({...option,"message_type": "custom","custom": buttonMenu(lang) })
                 }, 5000);

                })
              break;
              case "9":
                getLocation(message.from,(location) => {
                  if(location) {
                    let {latitude,longitude} = location
                    searchByLocation(latitude,longitude,(stores)=> {
                      let type="time"
                      sendStores(message.from,stores,type,(msg) => {
                        sendMessage({...option,"message_type": "custom","custom": msg })
                      })
                    })

                  }else {
                    getMessageLocation(message.from,(msg) => {
                      sendMessage({...option,"message_type": "text","text":msg })
                    })
                  }
                })
              break;
              case "10" : 
              creditElectro(message.from ,({text,lang})=> {
                sendMessage({...option,"message_type": "text","text": text })
                setTimeout(() => {
               
                  sendMessage({...option,"message_type": "custom","custom": buttonMenu(lang) })
               
                }, 5000);

              })
              break;
              case "11":
                console.log("Paiment Mode")
                paimentMode(message.from,({text,lang}) => {
                  sendMessage({...option,"message_type": "text","text": text })
                  
                  setTimeout(() => {
                 
                    sendMessage({...option,"message_type": "custom","custom": buttonMenu(lang) })
                 
                  }, 5000);
                })
              break;

            
              default:
                break;
            }


          }
        break;
        case "unsupported":
          sendMessage({...option,"message_type": "custom","custom": listOptions('fr')})  
        break;
        default:
          sendMessage({...option,"message_type": "custom","custom": welcomeMessage()})
        break;
      }
    }
  })

  saveMessage(message)
  res.status(200).end();

})

app.post('/status',(req,res) => {
  console.log(req.body)
  statusMessage(req.body)
  res.status(200).end();
})

app.listen(3000,()=>{console.log('chat bot is ready')})
