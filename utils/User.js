const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const connection = require('../database/Connection');
require('dotenv').config()
exports.login =async (req,res) => {
    const {email,password} = req.body
    let reqSql ="SELECT id, username, password FROM users WHERE username = ?"
    
    connection.query(reqSql,email,async (error,user) => {
        if(error) return res.status(404).send("user not found")
        if (user.length === 0) {
          return res.status(400).send("Invalid login credentials")
        }

        const match = await bcrypt.compare(password, user[0].password);
        if (!match) {
            return res.status(404).send("Invalid Password")
        }

        const token = jwt.sign({ id: user[0].id }, process.env.secretKey, {
            expiresIn: '1h',
          });
          return res.send({ userId: user[0].id, token });
      
    })


    
    
      // Check if the password is correct
    
      // Create a JWT token
     
}