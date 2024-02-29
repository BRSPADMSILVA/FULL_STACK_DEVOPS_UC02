const inquirer = require('inquirer');
const chalk = require('chalk');

const perguntas = [
  {
    type: 'checkbox',
    name: 'frutas',
    message: 'Selecione suas frutas favoritas:',
    choices: ['Laranja', 'Limão', 'Tangerina', 'Morango', 'Abacaxi', 'Mirtilo'],
  }
];

inquirer.prompt(perguntas).then((respostas) => {
  const frutasSelecionadas = respostas.frutas;
  console.log(`Suas frutas favoritas são: ${chalk.bold(frutasSelecionadas.join(', '))}`);
});
