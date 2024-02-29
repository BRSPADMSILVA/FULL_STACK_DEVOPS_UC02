const inquirer = require('inquirer');
const chalk = require('chalk');

inquirer
  .prompt({
    type: 'confirm',
    name: 'continuar',
    message: 'Você deseja continuar?',
  })
  .then((respostas) => {
    const resposta = respostas.continuar ? chalk.green('Sim') : chalk.red('Não');
    console.log(`Você escolheu: ${resposta}`);
  });