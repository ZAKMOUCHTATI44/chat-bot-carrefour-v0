case "text":
    switch (message.text) {
      case "1":
          sendMessage({...option,"message_type": "text","text": "Merci de nous partager votre localisation📍",})
        break;
      case "2":
          sendMessage({...option,"message_type": "text","text": "Merci de nous partager votre localisation📍",})
        break;
      case "3":
          sendMessage({...option,"message_type": "text","text": visitWebSite()})
        break;
      case "4":
             getCategories(message.from,(categories)=> {
              console.log(categories)
              //  sendMessage({...option,"message_type": "custom","custom": sendListPage(categories)})
             })
        break;
      case "5":
          sendMessage({...option,"message_type": "text","text": "Pourriez-vous nous en dire plus ? 🤔"})
        break;      
      case "6":
        console.log(6)
          sendMessage({...option,"message_type": "text","text": bringo()})
        break;  
      case "7":
          sendMessage({...option,"message_type": "text","text": programmeFid()})
      break;
      default:
        sendMessage({...option,"message_type": "custom","custom": welcomeMessage()})
        break;
    }
    break;