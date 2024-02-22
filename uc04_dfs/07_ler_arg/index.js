// node .\index.js nome=Adilson Martins 
// 
// PS C:\FULL_STACK_DEVOPS_UC02\uc04_dfs\07_ler_arg> node .\index.js nome=Adilson Martins
// [
//    'C:\\Program Files\\nodejs\\node.exe',
//    'C:\\FULL_STACK_DEVOPS_UC02\\uc04_dfs\\07_ler_arg\\index.js',
//    'nome=Adilson',
//    'Martins'
// ] 
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// node .\index.js nome=Adilson Martins idade=38
//[
//    'C:\\Program Files\\nodejs\\node.exe',
//    'C:\\FULL_STACK_DEVOPS_UC02\\uc04_dfs\\07_ler_arg\\index.js',
//    'nome=Adilson',
//    'Martins',
//    'idade=38'
//  ]
console.log(process.argv)  

// argumento slice sera cortado em dois trazendo a seguinte leitura
// [ 'nome=Adilson', 'Martins', 'idade=38' ]
//*******************************************************************/
const args = process.argv.slice(2);

console.log(args)

// pegar tudo de pois do igual
// [ 'nome=Adilson', 'idade=38' ]
// Adilson
// 38
// O usuario Adilson tem 38 anos

const nome = args[0].split("=")[1];  
const idade = args[1].split("=")[1];

console.log(nome)
console.log(idade)

console.log(`O usuario ${nome} tem ${idade} anos`)