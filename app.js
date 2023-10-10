const express = require('express');
const formidable = require('formidable');
const bodyParser = require('body-parser');
const app = express();
const fs = require('fs');
const path = require('path')
var cors = require('cors')

app.use(cors())

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.post('/upload', (req, res) => {

  const form = formidable();

  form.parse(req,(err,fileds,files) => {
      if(err) {
          return res.status(400).json({error:'Image Not uploaded !!'})
      }
      let patch = __dirname + '/public/upload/' + files.image.originalFilename;

      fs.appendFile( patch , fs.readFileSync(files.image.filepath), err => {
        if (err) {
            res.send('PDF Not Upload')
        };
        console.log('File saved successfully');
      });
  
    res.send(`File uploaded to`);
  }) 

});
app.listen(4000, () => console.log('Server started on port 3000'));
