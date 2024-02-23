const chalk = require("chalk")
const readline = require("readline").Interface({
    input: process.stdin,
    output: process.stdout,

})

readline.question(`Qual a sua linguagem programação preferida?`,(language) =>{
    if (language === "javascript"){
        console.log(chalk.bgGreen.black(" 😍 otima excolha!!!"));
    } else{
        console.log(chalk.bgRed.black("... é .... tá bom!!!😒"));
    }
    console.log(`A minha linguagem preferida é: ${language}`)
    readline.close()
})