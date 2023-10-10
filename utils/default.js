
exports.defaultMessage=(name,lang) => {
    if(lang === "fr") {
        return `Bonjour ${name} 👋😁, que puis-je faire pour vous ? Vous pouvez opter pour les services ci-dessous :
    
1 - 📍 Carrefour autour de moi
2 - 📒 Recevoir le catalogue
3 - 🖥 Visiter notre Site Web
4 - 🛍 S'abonner à nos pages
5 - ⚠️ Soumettre une réclamation
6 - 📦 Être livré chez-soi
7 - 💳 S'inscrire à notre programme de fidélité`.replaceAll("\t", '').trim();
    }else {
        return `مرحبًا  👋😁، كيف يمكنني مساعدتك؟ يمكنك الاختيار من بين الخدمات التالية:

1 - 📍 البحث عن كارفور بالقرب مني
2 - 📒 استلام الكتالوج
3 - 🖥 زيارة موقعنا الإلكتروني
4 - 🛍 الاشتراك في صفحاتنا
5 - ⚠️ تقديم شكوى
6 - 📦 التوصيل إلى المنزل
7 - 💳 الاشتراك في برنامج الولاء FID`.replaceAll("\t", '').trim();

    }
}

exports.welcomeMessage= ()=> {
    let custom = {
        "type": "interactive",
        "interactive": {
          "type": "button",
          "header": {
              "type": "text",
              "text": "Bonjour"
          },
          "body": {
              "text": "Merci de nous avoir contacté! Merci de sélectionner votre langue. \n مرحبًا ، شكرًا على تواصلك معنا! الرجاء تحديد اللغة."
          },
          "footer": {
              "text": "Veuillez sélectionner une langue."
          },
          "action": {
              "buttons": [
                  {
                      "type": "reply",
                      "reply": {
                          "id": "btn-lang-fr",
                          "title": "Français"
                      }
                  },
                  {
                      "type": "reply",
                      "reply": {
                          "id": "btn-lang-ar",
                          "title": "Arabe"
                      }
                  },
              ]
          }
        }
    }

    return custom;
}

exports.listOptions = (lang) => {

    // let body = {"fr" :"Bonjour 👋😁, que puis-je faire pour vous ? Vous pouvez opter pour les services ci-dessous :\n \n📍 Carrefour autour de moi\n📒 Recevoir le catalogue\n🖥 Visiter notre Site Web\n🛍 S'abonner à nos pages\n⚠️ Soumettre une réclamation\n📦 Être livré chez-soi\n💳 S'inscrire à notre programme de fidélité\n 🏢 Demandes d'emploi\n🕐 Horaires d'ouverture et fermeture des magasins \n 🏦Pièces à fournir pour le crédit Eléctro",
                // "ar" : "مرحبًا 👋😁، ماذا يمكنني فعله من أجلك؟ يمكنك الاختيار من بين الخدمات التالية:\n\n📍 كارفور بالقرب مني\n📒 استلام الكتالوج\n🖥 زيارة موقعنا على الويب\n🛍 الاشتراك في صفحاتنا\n⚠️ تقديم شكوى\n📦 التوصيل إلى المنزل\n💳 التسجيل في برنامج FID\n 🏢 طلبات العمل\n🕐 ساعات فتح وإغلاق المتاجر \n 🏦 المستندات المطلوبة لتقديم طلب للحصول على قرض الكترو"
    // }

    let body = {"fr" : "Bonjour 👋😁, que puis-je faire pour vous ? Veuillez appuyer sur options pour choisir l’un de nos services",
                "ar" : "مرحبًا 👋😁 ، ماذا أفعل من أجلك؟ اضغط على الخيارات لاختيار إحدى خدماتنا"
  }
    let  custom = {
        "type": "interactive",
        "interactive": {
          "type": "list",
          "header": {
            "type": "text",
            "text": lang === "ar" ? "كارفور" : "Carrefour"
          },
          "body": {
            "text": lang === "ar" ?body.ar : body.fr
          },
          "footer": {
            "text": " "
          },
          "action": {
            "button": lang === "ar" ? "خيارات" :"options",
            "sections": [
              {
                "title": lang === "ar" ?  "حدد اختيارك" : "Sélectionner votre choix",
                "rows": lang === "ar" ? options.ar : options.fr
              },
            ]
          }
        }
    }
    
    return custom
}


exports.buttonMenu= (lang) => {
  let custom = {
      "type": "interactive",
      "interactive": {
        "type": "button",
        "body": {
            "text":lang === "ar" ? "للعودة إلى القائمة، انقر أدناه" : "Veuillez appuyer ci-dessous pour revenir au menu principal !"
        },
        // "footer": {
        //     "text": " "
        // },
        "action": {
            "buttons": [
                {
                    "type": "reply",
                    "reply": {
                        "id": "menu-default",
                        "title":lang === "ar" ? "القائمة" : "Menu"
                    }
                },
            ]
        }
    }
  }

  return custom
}


exports.backToMenu = (lang) => {




  // let body = {"fr" :"Bonjour 👋😁, que puis-je faire pour vous ? Vous pouvez opter pour les services ci-dessous :\n \n📍 Carrefour autour de moi\n📒 Recevoir le catalogue\n🖥 Visiter notre Site Web\n🛍 S'abonner à nos pages\n⚠️ Soumettre une réclamation\n📦 Être livré chez-soi\n💳 S'inscrire à notre programme de fidélité\n 🏢 Demandes d'emploi\n🕐 Horaires d'ouverture et fermeture des magasins \n 🏦Pièces à fournir pour le crédit Eléctro",
              // "ar" : "مرحبًا 👋😁، ماذا يمكنني فعله من أجلك؟ يمكنك الاختيار من بين الخدمات التالية:\n\n📍 كارفور بالقرب مني\n📒 استلام الكتالوج\n🖥 زيارة موقعنا على الويب\n🛍 الاشتراك في صفحاتنا\n⚠️ تقديم شكوى\n📦 التوصيل إلى المنزل\n💳 التسجيل في برنامج FID\n 🏢 طلبات العمل\n🕐 ساعات فتح وإغلاق المتاجر \n 🏦 المستندات المطلوبة لتقديم طلب للحصول على قرض الكترو"
  // }

  let body = {"fr" : "Veuillez appuyer sur options pour choisir l’un de nos services",
              "ar" : "يرجى الضغط على الخيارات لاختيار أحد خدماتنا"
}
  let  custom = {
      "type": "interactive",
      "interactive": {
        "type": "list",
        "header": {
          "type": "text",
          "text": lang === "ar" ? "كارفور" : "Carrefour"
        },
        "body": {
          "text": lang === "ar" ?body.ar : body.fr
        },
        "footer": {
          "text": " "
        },
        "action": {
          "button": lang === "ar" ? "خيارات" :"options",
          "sections": [
            {
              "title": lang === "ar" ?  "حدد اختيارك" : "Sélectionner votre choix",
              "rows": lang === "ar" ? options.ar : options.fr
            },
          ]
        }
      }
  }
  
  return custom
}

const options ={
  "fr" :  [
      {
          id:"option1",
          title:" ",
          description : "📍 Carrefour autour de moi"
      },
      {
          id:"option2",
          title:" ",
          description : "📒 Recevoir le catalogue"
      },
      {
          id:"option4",
          title:" ",
          description : "🛍 s'abonner à nos pages ou visiter nos sites web"
      },
      {
          id:"option5",
          title:" ",
          description : "⚠️ Soumettre une réclamation"
      },
      {
          id:"option6",
          title:" ",
          description : "📦 Être livré chez-soi"

      },
      {
          id:"option7",
          title:" ",
          description : "💳 S'inscrire à notre programme de fidélité"
      },
      {
        id:"option8",
        title:" ",
        description : "🏢 Demandes d'emploi"
      },
      {
        id:"option9",
        title:" ",
        description : "🕐 Horaires d'ouverture et fermeture des magasins"
      },
      {
        id:"option10",
        title:" ",
        description : "🏦 Pièces à fournir pour le crédit Eléctro"
      },
      {
        id:"option11",
        title:" ",
        description :"💰 Modes de paiement acceptés par Carrefour"

      }
      
  ],
  "ar" : [
      {
        id: "option1",
        title: " ",
        description: "📍 البحث عن كارفور بالقرب مني"
      },
      {
        id: "option2",
        title: " ",
        description: "📒 استلام الكتالوج"
      },
      {
        id: "option4",
        title: " ",
        description: "🛍 الاشتراك في صفحاتنا و  زيارة موقعنا الإلكتروني"
      },
      {
        id: "option5",
        title: " ",
        description: "⚠️ تقديم شكوى"
      },
      {
        id: "option6",
        title: " ",
        description: "📦 التوصيل إلى المنزل"
      },
      {
        id: "option7",
        title: " ",
        description: "💳 الاشتراك في برنامج الولاء FID"
      },
      {
        id:"option8",
        title:" ",
        description : "🏢 طلبات العمل"
      },
      {
        id:"option9",
        title:" ",
        description : "🕐 ساعات عمل المتاجر وإغلاقها"
      },
      {
        id:"option10",
        title:" ",
        description : "🏦 المستندات المطلوبة للحصول على قرض إلكترو."
      },
      {
        id:"option11",
        title:" ",
        description :"💰ما طرق الدفع التي يقبلها كارفور ؟"

      }
    ]
} 
