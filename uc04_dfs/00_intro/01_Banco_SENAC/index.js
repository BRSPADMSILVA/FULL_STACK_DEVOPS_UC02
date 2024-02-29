const inquirer = require("inquirer")
const chalk = require("chalk")
const fs = require("fs")

function operation (){
    inquirer
        .createPromptModule([{
          type:'list',
          name: 'action',
          message: 'O que voce deseja fazer'
          choices:[
            'Criar conta',
            'Consultar Saldo',
            'Depositar',
            'Sacar',
            'Sair'
          ],
        },
    ])
    .then((answer) => {
    const action = answer['action']
    console.log(action)
})
    .catch((err) => console.log(err))
}

