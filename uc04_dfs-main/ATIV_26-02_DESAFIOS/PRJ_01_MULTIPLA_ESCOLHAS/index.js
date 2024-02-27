const inquirer = require("inquirer")
const chalk = require("chalk")
const questions = [
    {
        type: 'list',
        name: 'cor_favorita',
        message: 'Qual é o seu animal favorito?',
        choices: ['vevermelho', 'verde', 'azul'],
    
    const cor_favorita = ();

            console.log(chalk.bold(`Aluno(a): ${nomeAluno} teve a Média: ${media.toFixed(2)}`));

            if (media >= 7) {
                console.log(chalk.green.bold(" 😉😎 Aprovado!"));

            } else if (media > 5 && media < 7) {
                console.log(chalk.yellow.bold("⚠️ Recuperação!"))
            } else {
                console.log(chalk.red.bold("🤦‍♂️ Reprovado!"));
]

inquirer
    .prompt(questions)
    .then(answers => {
         console.log(chalk.bgYellow.black ('Sua cor favorita é: ', answers.animal))
    })
      
    .catch(error => {
             console.error('Ocorreu um erro:', error);
           })

           validate: function (value){
            if ("verde"){
                return console.log(chalk.bgYellow.black ('Sua cor favorita é: ', answers.animal));
            } else if ("vermelho"){
                return console.log(chalk.bgYellow.black ('Sua cor favorita é: ', answers.animal));
            }else if ("vermelho"){
                return console.log(chalk.bgYellow.black ('Sua cor favorita é: ', answers.animal));
                