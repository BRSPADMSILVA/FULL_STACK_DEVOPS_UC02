const chalk = require("chalk")
const readline = require("readline").Interface({
})
let nota1 = parseFloat(prompt("nota01"))
let nota2 = parseFloat(prompt("nota02"))
let nota3 = parseFloat(prompt("nota03"))

let media = (nota1 + nota2 + nota3) /3

if(media < 5){
console.log(chalk.bgGreen.black(`Aluno(a) reprovado(a) com média ${media}`))

} else if (media >= 5 && media < 7) {
  console.log(chalk.bgRed.black(`Aluno(a) em recuperação com média ${media}`))

 } else {
console.log(chalk.bgGreen.black(`Aluno(a) aprovado com média ${media}`))
readline.close()
 }