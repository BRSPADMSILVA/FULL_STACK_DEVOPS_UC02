// modulos internos
const inquirer = require('inquirer')
const chalk = require('chalk')

//modulos externos
const fs = require('fs')

operation()

function operation() {
  inquirer
    .prompt([
      {
        type: 'list',
        name: 'action',
        message: 'O que você deseja fazer?',
        choices: [
          'Criar conta',
          'Consultar Saldo',
          'Depositar',
          'Sacar',
          'Sair',
        ],
      },
    ])
    .then((answer) => {
      const action = answer['action']

      if (action === 'Criar conta') {
        createAccount()
      }else if (action === 'Depositar'){
        deposit()   
      }else if (action === 'Consultar Saldo'){
        getAccountBalace()
      }else if (action === 'Sacar'){
        withdraw()
      }else if (action === 'Sair'){
        console.log(chalk.bgBlue.black('Obrigado por usar o SENAC Bank'))
        process.exit()
      }

    })
    .catch((err) => console.log(err))
}

// create user account
function createAccount() {
  console.log(chalk.bgGreen.black('Parabéns por escolher nosso banco!'))
  console.log(chalk.green('Defina as opções da sua conta a seguir'))
  
  buildAccount()
}

//Criando um diretorio Accounts
function buildAccount() {
  inquirer
    .prompt([
      {
        name: 'accountName',
        message: 'Digite um nome para a sua conta:',
      },
    ])
    .then((answer) => {
      console.info(answer['accountName'])

      const accountName = answer['accountName']
      //incluindo diretorio Accounts
      if (!fs.existsSync('accounts')) {
        fs.mkdirSync('accounts')
      }
      //Verificando se usuario existe
      if (fs.existsSync(`accounts/${accountName}.json`)) {
        console.log(
          chalk.bgRed.black('Esta conta já existe, escolha outro nome!'),
        )
        buildAccount(accountName)
        return
      }
      //Criando a conta e gravando 
      fs.writeFileSync(
        `accounts/${accountName}.json`,
        '{"balance":0}',
        function (err) {
          console.log(err)
        },
      )

      console.log(chalk.green('Parabéns, sua conta foi criada!'))
      operation()
    })
    .catch ((err) => console.log(err))
  } 
  

  //ad an amount to user account

  function deposit(){
    inquirer
        .prompt([
            {
                name: 'accountName',
                message: 'Qual o nome da sua conta?',
            }
        ])
        .then((answer) => {
            const accountName = answer['accountName']
            
            if(!checkAccount(accountName)) {
                return deposit()
            }
            
            inquirer
                .prompt([{
                  name: 'amount',
                  message: 'Quanto voce deseja depositar',

                }
              ])
              .then((answer) => {
                const amount = answer['amount']
                addAmount(accountName, amount)
                operation()
              })

        })
  }

  // verifica se conta existe
  function checkAccount(accountName){
    if(!fs.existsSync(`accounts/${accountName}.json`)){
        console.log(chalk.bgRed.black('Esta conta não exite, escolha outra nome!'))
        return false
    }
    return true
  }


  function getAccount(accountName){
    const accountJSON =fs.readFileSync(`account/${accountName}.json`,{
      encoding: 'utf-8',
      flag: 'r',
    })
    return JSON.parse(accountJSON)
  }

  function addAmount(accountName, amount){
    const accountData = getAccount(accountName)

    if(!amount) {
      console.log(
        chalk.bgRed.black("Ocorreu umerro, tente mais tarde")
      )
      return deposit()
    }

    accountData.balance = parseFloat(amount) + parseFloat(accountData.balance)
    
    fs.writeFileSync(
      `accounts/${accountName}.json`,
      JSON.stringify(accountData),
      function (err) {
        console(err)
      }
    )
         console.log(chalk.bgGreenBright(`Deposito realizado com sucesso! Valor R$ ${amount}`))
  }