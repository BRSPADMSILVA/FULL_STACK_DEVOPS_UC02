const inquirer = require('inquirer');
const chalk = require('chalk');

inquirer
  .prompt({
    type: 'input',
    name: 'nome',
    message: 'Digite o seu nome:',
  })
  .then((respostas) => {
    const nome = respostas.nome;
    console.log(`Olá, ${chalk.bold(nome)}! Bem-vindo(a)!`);
  });