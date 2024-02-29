const inquirer = require('inquirer');
const chalk = require('chalk');

const perguntas = [
  {
    type: 'list',
    name: 'corFavorita',
    message: 'Qual é a sua cor favorita?',
    choices: ['Vermelho', 'Verde', 'Azul']
  }
];

inquirer.prompt(perguntas).then(respostas => {
  const corEscolhida = respostas.corFavorita;
  console.log(`Sua cor favorita é: ${chalk.bold(corEscolhida)}`);
});