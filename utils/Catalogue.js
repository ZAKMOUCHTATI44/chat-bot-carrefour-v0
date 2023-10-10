const formidable = require("formidable");
const fs = require('fs');
const path = require('path');
const connection = require("../database/Connection");

exports.upload = (req,res) => {
  const form = formidable();

  form.parse(req,(err,fileds,files) => {
      if(err) {
          return res.status(400).json({error:'Image Not uploaded !!'})
      }
      let patch = __dirname.replace('utils','') + 'public/upload/' + files.image.originalFilename;

      fs.appendFile( patch , fs.readFileSync(files.image.filepath), err => {
        if (err) {
          console.log(err)
           return res.send('PDF Not Upload')
        };
      });
  
      this.addCatalogue(files.image.originalFilename,fileds.magasin.split(','))

      return res.send(`File uploaded to`);
  }) 
}

exports.addCatalogue =(fileName,stores) => {
  let req="INSERT INTO catalogs (path) values (?)"

  connection.query(req,fileName,(error,result) => {
    if(error) console.log(error)
    this.updateStoresCatalogue(result.insertId,stores)
  })
}

exports.updateStoresCatalogue = (catalogueId,stores) => {
  let req = "update stores set catalog_id = ? where id  in (?)"
  connection.query(req,[catalogueId,stores],(error,results) => {
    if(error) console.log(error)
    console.log(results)
  })
}

exports.getCatalogs = (req,res) => {
  let query="select id,path,DATE_FORMAT(created_at,'%d/%c/%Y') as created_at from catalogs order by id desc"
  connection.query(query,(error,results) => {
      if(error) console.log(error)
      return res.send({catalogs:results})

  })
} 