const inquirer = require("inquirer")
const chalk = require("chalk")

inquirer
    .prompt([
        {
            name: 'name',
            message: 'Qual é o seu nome?',
        },
        {
            name:'idade',
            message: 'Qual é a sua idade?', 
        },
    ])
    .then((answers) => {
         const response = `O nome do usuario é ${answers.nome} e Ele(a) tem ${
            answers.idade}`
            console.log(chalk.bgYellow.black(response))
    })
    .catch((err) => {
        console.log(err)
    })
    