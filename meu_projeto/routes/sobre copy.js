const express = require('express');
const router = express.Router();

router.get('/sobre', (req, res) => {
  res.sendFile(__dirname + '/../public/sobre.html');
});

module.exports = router;

