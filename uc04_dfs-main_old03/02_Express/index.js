const express = require ("express")
const app = express()
const path = require ("path")
const port = 3000

const basePath = path.join(__dirname, 'templates')

app.use(
    express.urlencoded({
        extensded: true,
    }),
)

app.use(express.json())

var checkAuth = function(req, res, next){
    req.authStatus = true

    if(req.authStatus){
        console.log(`Está logado, pode continuar`)
        next()
    }else{
        console.log('Não está logado, faça o login para continuar')
    }
}

app.use(checkAuth)

app.get('/users/add', (req, res) => {
    res.sendFile(`${basePath}/userform.html`)
})

app.post('users/save', (req, res) => {
    console.log(req, body)
    const name = req.body.name
    const age = req.body.age

    console.log(name)
    console.log(age)
})



app.get('/users/:id', (req, res)=> {
    console.log(`carregando usuarios: ${req.params.id}`)

    res.sendFile(`${basePath}/users.html`)
})

app.get('/', (req, res) => {
    res.sendFile(`${basePath}/index.html`)
})

app.listen(port, () => {
    console.log(`App rodando na porta: ${port}`)
} )