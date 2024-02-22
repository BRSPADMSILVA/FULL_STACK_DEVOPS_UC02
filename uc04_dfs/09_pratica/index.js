const minimist = require ('minimist')

const meu_modulo = require('./meu_modulo')

const soma = meuModulo.soma

const args = minimist(process.argv.slice(2))

const a = args["a"]
const b = args["b"]

soma(a, b)

