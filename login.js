const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const bcrypt = require('bcrypt');
const connection = require('./database/Connection');

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());




app.post('/login', (req, res) => {
  const { username, password } = req.body;
  const sql = `SELECT * FROM users WHERE username = '${username}'`;
  connection.query(sql, async (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      const match = await bcrypt.compare(password, result[0].password);
      if (match) {
        let user =  {name:result[0].username} 
        res.send({user});
      } else {
          res.status(404).send('Invalid username or password')
      }
    } else {
      res.status(404).send('Invalid username or password')
    }
  });
});

app.post('/register', async (req, res) => {
  const { username, password } = req.body;
  const hashedPassword = await bcrypt.hash(password, 10);
  const sql = `INSERT INTO users (username, password) VALUES ('${username}', '${hashedPassword}')`;
  connection.query(sql, (err, result) => {
    if (err) throw err;
    res.send('Registration successful');
  });
});

app.listen(3000, () => console.log('Server started on port 3000'));
