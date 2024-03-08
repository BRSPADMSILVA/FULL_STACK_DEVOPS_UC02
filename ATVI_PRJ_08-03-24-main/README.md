# Projeto 1: Calculadora de Gorjetas

Este é um programa de linha de comando que simula uma calculadora de gorjetas para dividir a conta entre um grupo de pessoas em um restaurante. O programa permite ao usuário inserir o valor total da conta e o número de pessoas no grupo. Em seguida, solicita ao usuário que insira o nome de cada pessoa e o valor que cada uma deseja contribuir. O programa calcula e exibe a quantia que cada pessoa deve pagar, incluindo uma gorjeta de 10% sobre o valor total da conta.

## Funcionalidades

- Solicitação do valor total da conta e do número de pessoas no grupo.
- Solicitação do nome e da contribuição de cada pessoa.
- Verificação se o valor total da conta e o número de pessoas são números válidos e maiores que zero.
- Verificação se a soma das contribuições individuais é igual ao valor total da conta.
- Cálculo da quantia que cada pessoa deve pagar, incluindo uma gorjeta de 10% sobre o valor total da conta.
- Exibição dos resultados no console, mostrando o nome de cada pessoa e a quantia que ela deve pagar.

## Tecnologias Utilizadas

- JavaScript
- Node.js
- inquirer
- chalk

## Instalação e Uso

1. Clone este repositório para o seu ambiente local.
2. Navegue até o diretório do projeto no terminal.
3. Execute o comando abaixo para instalar as dependências do projeto:

npm install


4. Execute o programa com o seguinte comando:

node calculadora.js

### Possíveis Soluções para Falhas:

Possíveis Soluções para Falhas
Verifique se os Módulos estão Instalados Corretamente:
Confirme se os módulos chalk e inquirer estão realmente instalados no diretório do seu projeto. Você pode verificar isso navegando até o diretório do projeto no terminal e executando o comando npm ls. Isso listará todas as dependências instaladas no seu projeto e suas versões.

Tente Executar o Código em Outro Ambiente:
Se possível, tente executar o seu código em outro ambiente para ver se o erro persiste. Isso pode ajudar a determinar se o problema está relacionado ao ambiente de desenvolvimento atual.

Verifique as Permissões de Acesso:
Verifique se o seu usuário tem permissões de leitura e execução para os diretórios e arquivos do seu projeto, incluindo os módulos chalk e inquirer.

Verifique por Problemas de Cache:
Às vezes, problemas de cache podem causar comportamentos inesperados. Tente limpar o cache do npm executando o comando npm cache clean --force no terminal e, em seguida, reinstale as dependências com npm install.

Atualize o Node.js:
Verifique se você está utilizando a versão mais recente do Node.js. Se não estiver, considere atualizá-lo para ver se isso resolve o problema.

Se mesmo após essas verificações o erro persistir, pode ser útil compartilhar mais detalhes sobre o ambiente de desenvolvimento e como você está executando o código.


# Projeto 2: Express

Este é um projeto Express que inclui duas páginas da sua escolha. Adiciona CSS às páginas, mudando a cor de fundo e a cor da fonte, pelo menos, e separa as rotas no recurso de Router do Express.

## Tecnologias Utilizadas

- JavaScript
- Node.js
- Express

## Instalação e Uso

1. Clone este repositório para o seu ambiente local.
2. Navegue até o diretório do projeto no terminal.
3. Execute o comando abaixo para instalar as dependências do projeto:

npm install

4. Execute o projeto com o seguinte comando:

npm run serve

5. Acesse as páginas em seu navegador através dos seguintes URLs:

- Página 1: [http://localhost:5000/pagina1](http://localhost:5000/pagina1)
- Página 2: [http://localhost:5000/pagina2](http://localhost:5000/pagina2)
