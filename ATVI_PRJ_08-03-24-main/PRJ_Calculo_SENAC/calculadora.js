const chalk = require('./node_modules/chalk');
const inquirer = require('./node_modules/inquirer');

async function calculateTipAndSplitBill() {
    console.log(chalk.bold.green('Bem-vindo à calculadora de gorjetas!\n'));

    // Perguntar ao usuário o valor total da conta e o número de pessoas no grupo
    const { totalBill, numPeople } = await inquirer.prompt([
        {
            type: 'number',
            name: 'totalBill',
            message: 'Qual é o valor total da conta?',
            validate: value => value > 0 ? true : 'Por favor, insira um número válido maior que zero.'
        },
        {
            type: 'number',
            name: 'numPeople',
            message: 'Quantas pessoas estão no grupo?',
            validate: value => value > 0 ? true : 'Por favor, insira um número válido maior que zero.'
        }
    ]);

    // Perguntar ao usuário o nome e a contribuição de cada pessoa
    const contributions = [];
    for (let i = 0; i < numPeople; i++) {
        const { personName, contribution } = await inquirer.prompt([
            {
                type: 'input',
                name: 'personName',
                message: `Nome da pessoa ${i + 1}:`
            },
            {
                type: 'number',
                name: 'contribution',
                message: `Quanto ${chalk.bold('$')} ela deseja contribuir?`,
                validate: value => value >= 0 ? true : 'Por favor, insira um número válido.'
            }
        ]);
        contributions.push({ personName, contribution });
    }

    // Perguntar ao usuário o nível de serviço para calcular a gorjeta
    const { serviceLevel } = await inquirer.prompt([
        {
            type: 'list',
            name: 'serviceLevel',
            message: 'Selecione o nível de serviço:',
            choices: [
                { name: 'Bom (15%)', value: 0.15 },
                { name: 'Ótimo (20%)', value: 0.20 },
                { name: 'Excelente (25%)', value: 0.25 }
            ]
        }
    ]);

    // Calcular o valor total da conta com a gorjeta
    const totalAmount = totalBill * (1 + serviceLevel);

    // Calcular a quantia que cada pessoa deve pagar
    const individualAmount = totalAmount / numPeople;

    // Exibir os resultados
    console.log(chalk.bold('\nResumo da conta:'));
    console.log(`Valor total da conta: ${chalk.bold('$' + totalAmount.toFixed(2))}`);
    console.log(`Gorjeta (${(serviceLevel * 100)}%): ${chalk.bold('$' + (totalAmount - totalBill).toFixed(2))}`);
    console.log(chalk.bold('\nContribuição individual:'));
    contributions.forEach(({ personName, contribution }) => {
        console.log(`${personName}: ${chalk.bold('$' + (individualAmount + contribution).toFixed(2))}`);
    });
}

calculateTipAndSplitBill().catch(error => {
    console.error('Ocorreu um erro:', error);
});
