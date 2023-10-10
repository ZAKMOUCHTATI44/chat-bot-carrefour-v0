require('dotenv').config()
const jwt = require('jsonwebtoken');
exports.authenticateToken = async (req, res, next) => {
    // Get the authorization header
    const authHeader = req.headers['authorization'];

    
    // Get the token from the header
    const token = authHeader && authHeader.split(' ')[1];
    
    if (!token) {
        return res.status(401).send({ message: 'Unauthorized' });
    }
  
    try {
      // Verify the token
      const decoded = jwt.verify(token, process.env.secretKey);
      req.user = decoded.id;
      next();
    } catch (error) {
      return res.status(401).send({ message: 'Unauthorized' });
    }
  };