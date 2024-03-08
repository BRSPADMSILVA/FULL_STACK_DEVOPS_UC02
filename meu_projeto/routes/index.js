const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
  res.sendFile(`${basePath}/../public/index.html`);
});

module.exports = router;


router.get('/:id', (req, res) => {
  console.log(`Carregando usuário: ${req.params.id}`)

  res.sendFile(`${basePath}/users.html`)
})