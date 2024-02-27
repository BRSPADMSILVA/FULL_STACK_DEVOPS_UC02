const inquirer = require("inquirer")

const questions =[
    {
        type: 'list',
        name: 'animal',
        message: 'Qaual e o seu animal favorito?',
        choices: ['cachorro', 'Gato', 'Coelho', 'Peixe', 'Passaro'],
    }
]

inquirer
    .prompt(questions)
    .then(answers => {
        console.log('Seu animal favoritoé: ', answers.animal)
        }
    )
    .catch(error => {
        console.error('Ocorreu um erro:', error)
    })