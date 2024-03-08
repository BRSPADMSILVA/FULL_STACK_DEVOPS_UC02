const express = require('express');
const router = express.Router();

router.get('/pagina1', (req, res) => {
    res.sendFile(__dirname + '/views/pagina1.html');
});

router.get('/pagina2', (req, res) => {
    res.sendFile(__dirname + '/views/pagina2.html');
});

module.exports = router;