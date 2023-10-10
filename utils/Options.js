const { getLang } = require("./Message");

exports.visitWebSite=(phone,callback) => {

    let text =`Afin d’accéder à nos sites web, nous vous invitons à appuyer sur les liens ci-dessous 👇
        
Carrefour: https://bit.ly/3A2xR2H
Carrefour Market,  Carrefour Express et Carrefour Gourmet: https://bit.ly/3ofxlMe`
    getLang(phone,({lang}) => {
        if(lang === "ar") {
            text=`من أجل الوصول إلى مواقعنا الإلكترونية ، ندعوك للنقر على الروابط أدناه 👇
            
كارفور: 
https://bit.ly/3A2xR2H
كارفور ماركت، كارفور إكسبرس، وكارفور جورميه.
https://bit.ly/3ofxlMe`

        }
            
        return callback({text,lang})

    })
}

exports.programmeFid=(phone,callback) => {
    let text = `Pour vous abonner à notre programme de fidélité, nous vous invitons à télécharger l'application Carrefour Maroc
 
Lien : https://onelink.to/a95vau`
    
    getLang(phone,({lang}) => {
        if(lang === "ar") {
            text= `للاشتراك في برنامج الولاء الخاص بنا، ندعوك لتحميل تطبيق كارفور المغرب

الرابط: https://onelink.to/a95vau`
        }

        return callback({text,lang})
    })

}

exports.bringo=(phone,callback) => {
    let text= `Afin d’être livré chez vous, nous vous invitons à télécharger l'application Bringo, et à passer votre commande.
                       
Lien: https://onelink.to/deb6nk`


    getLang(phone,({lang}) => {
        if(lang === "ar") {
            text = `لكي تتمكن من استلام طلبك في منزلك، ندعوك لتنزيل تطبيق Bringo وتقديم طلبك.

الرابط: https://onelink.to/deb6nk`
        }

        return callback({text,lang})
    })

}

exports.reclamation = (phone,callback) => {
    getLang(phone,({lang})=>{
        console.log(lang)
        let text = "Pourriez-vous nous en dire plus ? 🤔"
        if(lang === "ar") {
            text = "هل يمكنكم تزويدنا بمزيد من المعلومات؟ 🤔"
        }
        callback({text,lang})
    })
}