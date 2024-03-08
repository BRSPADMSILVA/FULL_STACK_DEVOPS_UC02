const express = require('express');
const app = express();
const indexRouter = require('./routes/index');
const sobreRouter = require('./routes/sobre');
const port = 5000

app.use('/', indexRouter);
app.use('/', sobreRouter);

app.listen(port, () => {
  console.log(`Servidor rodando na porta ${port}`);
});