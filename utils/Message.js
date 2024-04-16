const axios = require('axios');
var connection = require('../database/Connection');

exports.sendMessage = (data) => {

    const config = {
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ' + process.env.ACCESS_TOKEM
        }
    };
    axios.post('https://api.nexmo.com/v1/messages', data, config)
    .then((response) => {
        this.saveResponne({message_id : response.data.message_uuid,from:data.from,to:data.to,type:data.message_type})
    })
    .catch((error) => {
        console.error(error);
    });
}

exports.sendPDF = (data,button) => {
    const config = {
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ' + "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpYXQiOjE2ODMwMzg4MTEsImV4cCI6MjU0NzAzODgxMSwianRpIjoiYVNrRjJYVTV6TnkxIiwiYXBwbGljYXRpb25faWQiOiI3MmQyOTAyNi1mZWZhLTQzMGItYWJmYy01YTNhYmZhMzQ3NjIiLCJzdWIiOiIiLCJhY2wiOiIifQ.SVyEPu5w652cABhjd64rT1ZqY35Hsw9cOn5HS-7WhLTok4W75uKRLxF_ZozWy_8_8PntyPmWsaAITLRsdhlY0dwD1LKHtxHBWWm4LWQhw2qViPvSvRLXfhsNhy3b8SebfFidK8XjbTZG-49hpgiOr-rt6u-iprhr-5xy_g27tEoy4qmrxAbLDCHZ5hU7gxaVWdIipnXArz--zt7Ar5LVwwF_ErTZntHdaBEPHM-SGpVQXF_av9ZxepW6-U-i4TgiWD9AFdoYwtTNeyc0Xr-VdCxef4mkhUfoOvDhLJu_vAnvCWHiVQypSKpHoznRzp5amC0fLyinT7f7YF9UkacN0g"
        }
    };

    axios.post('https://api.nexmo.com/v1/messages', data, config)
    .then((response) => {
        // console.log(response.data);
        setTimeout(()=> {
            this.sendMessage(button)
        },2000)
    })
    .catch((error) => {
        console.error(error);
    });
}


exports.saveMessage=(message) => {

    let {to,from,message_uuid,message_type,text=null} = message;

    let sql ="INSERT INTO `messages` ( `message_id`, `to`, `from`, `type`, `body`,`latitude`,`longitude`) VALUES (?,?,?,?,?,?,?)"

    let longitude = null,latitude = null;


    switch(message_type) {
        case "text" : 
            text=text 
        break;
        case 'reply' :
            text = message.reply.id
        break;
        case 'location':
            let {lat,long} = message.location
            longitude=long;
            latitude=lat;
        break;
    }


    connection.query(sql,[message_uuid,to,from,message_type,text,latitude,longitude],(error,results,type)=> {
        if(error) console.log(error)
    });
}


exports.getLastMessage=(callback) => {
    let req="select body,messages.from,created_at from messages order by id desc limit 1";
    connection.query(req,(error,results) => {
        if(error) console.log(error)
        callback(results[0])
    })
} 

exports.saveResponne=(response) => {

    let {message_id,from,to,type} = response;

    let req = "INSERT into responses (`message_id`, `to`, `from`, `message_type`) values (?,?,?,?)"  
    connection.query(req,[message_id,from,to,type],(error,results)=> {
        if(error) console.log(error)
    })
}

exports.statusMessage = (msg) => {

    let req= "UPDATE responses set status = ? where message_id = ?"

    connection.query(req,[msg.status,msg.message_uuid],(error,results) => {
        if(error) console.log(error)

    })
}

exports.getLang = (phone,callback) => {
    let req= "select lang from leads where phone = ? ORDER BY id DESC LIMIT 1"

    connection.query(req,phone,(error,results) => {
        if(error) console.log(error)
        callback(results[0])

    })
}

exports.jobOffre = (phone,callback) => {
    let text = `Nous vous remercions de l'intérêt que vous portez à notre entreprise. Nous serions ravis de répondre à vos questions. Nous vous prions de bien vouloir envoyer votre CV à l'adresse mail suivante : 
Jobs@labelvie.ma
Nous tenons à vous informer que notre service RH vous contactera dès qu'une opportunité correspondant à votre profil se présentera. Nous vous souhaitons beaucoup de succès dans votre carrière et vous remercions pour votre fidélité.`
    this.getLang(phone,({lang}) => {
        if(lang === "ar") {
            text =`نشكرك على اهتمامك بشركتنا. سنكون سعداء للإجابة على أي أسئلتك. يرجى إرسال سيرتك الذاتية إلى البريد الإلكتروني التالي: Jobs@labelvie.ma
نحن نود إعلامك بأن خدمة الموارد البشرية ستتصل بك فور توفر فرصة تتناسب مع ملفك الشخصي. نتمنى لك النجاح في حياتك المهنية ونشكرك على وفائك.`
        }
        return callback({text,lang})
    })
}

exports.creditElectro = (phone,callback) => {
    let text = `Nous vous remercions de votre temps et nous sommes heureux de répondre à vos questions. Afin de bénéficier du prêt gratuit, vous devrez fournir les documents suivants: carte d'identité nationale, modèle de chèque ou certificat d'identification bancaire requis, facture de téléphone ou d'électricité, les 3 derniers relevés bancaires, ainsi que les documents requis selon le type de revenu :

Pour les salariés : les deux derniers bulletins de salaire et un certificat de travail.
Pour les employés : une attestation d'engagement ou un certificat de salaire.
Pour les retraités : les deux derniers avis d'acompte de pension.
Pour les travailleurs indépendants : la carte professionnelle et le dernier avis d'imposition sur les taxes commerciales.
Pour les commerçants : une copie du formulaire 7 du registre du commerce (moins de 3 mois).
Nous tenons à vous remercier de tout cœur pour votre fidélité à Carrefour et vous souhaitons une excellente journée.
pour plus d'information merci de nous contacter sur le numero suivant: 05 29 045 777`
    
    this.getLang(phone,({lang})=>{
        if(lang === "ar") {
            text=`نشكرك على وقتك وسعداء بالإجابة على أي استفسارات لديك. للاستفادة من القرض المجاني، سيتعين عليك تقديم الوثائق التالية: بطاقة الهوية الوطنية، نموذج شيك أو شهادة تحقق من الهوية البنكية المطلوبة، فاتورة هاتف أو كهرباء، آخر 3 كشوفات بنكية، بالإضافة إلى الوثائق المطلوبة حسب نوع الدخل:

- للموظفين: آخرين كشوفات الراتب وشهادة العمل.
- للعاملين: شهادة التزام أو شهادة الراتب.
- للمتقاعدين: آخرين إشعارين بالتقاعد.
- للعمال المستقلين: بطاقة مهنية وآخر إشعار بالضرائب التجارية.
- للتجار: نسخة من الاستمارة 7 للسجل التجاري (أقل من 3 أشهر).

نشكركم من القلب على وفائكم لكارفور ونتمنى لكم يوماً ممتعاً. للمزيد من المعلومات، يرجى الاتصال بنا على الرقم التالي: 05 29 045 777.`
        }

        return callback({text,lang})
    })
}

exports.getMessageSubcriber= (phone,callback) => {
    let text = "Félicitations! Vous ne raterez plus jamais  les promotions Carrefour 👏"
    this.getLang(phone,({lang}) => {

        console.log(lang)
        if(lang === "ar") {
            text = "تهانينا! لن تفوتك عروض كارفور مرة أخرى 👏"
        }
        return callback({text,lang})
    })
}

exports.paimentMode = (phone,callback) => {

    let text = `Bonjour Madame Monsieur,

Avant toute chose, nous vous remercions du temps que vous nous avez consacré et nous serons heureux de répondre à vos questions.
Vous pouvez payer en espèce, par chèque ou par carte bancaire.        

Nous vous remercions pour votre fidélité et vous souhaitons une très bonne journée,
    
Cordialement
Service Relation Client`
    this.getLang(phone,({lang}) => {
        if(lang == "ar") {
            text = `السلام عليكم
نشكركم على وقتكم ويسعدنا الرد على أسئلتكم 
يمكنكم الأداء نقدا أو بالبطاقة البنكية أو بالشيك
           
كارفور ماركت يشكرك على ولائك ويتمنى لك يومًا سعيدًا.
تحياتي،
مصلحة الزبناء`
        }

        return callback({lang , text})


    })
}