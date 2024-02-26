const inquirer = require("inquirer")

const questions = [
    {
        type: 'input',
        name: 'name',
        message: 'Qaual e o seu nome?',
        validate: function (value){
            if (value.trim().length> 0){
                return true; 
            } else {
                return 'Por favor, digite seu nome'  
        }
    
       }
    }    
    ]

    inquirer
        .prompt(questions)
        .then(answers => {
            console.log("Olá, " + answers.name + "!")
        })
        .catch(error => {
            console.log("Ocorreu um error: " , error)
        })
  