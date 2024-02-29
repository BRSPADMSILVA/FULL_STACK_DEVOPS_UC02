const inquirer = require('inquirer');
const chalk = require('chalk');

const perguntas = [
  {
    type: 'list',
    name: 'classificacao',
    message: 'Classifique o produto:',
    choices: ['1 ⭐estrela', '2 ⭐⭐estrelas', '3 ⭐⭐⭐estrelas', '4 ⭐⭐⭐⭐estrelas', '5 ⭐⭐⭐⭐⭐estrelas'],
  }
];

inquirer.prompt(perguntas).then((respostas) => {
  const classificacaoEscolhida = respostas.classificacao;
  console.log(`Você classificou o produto com: ${chalk.yellow(classificacaoEscolhida)}`);
});