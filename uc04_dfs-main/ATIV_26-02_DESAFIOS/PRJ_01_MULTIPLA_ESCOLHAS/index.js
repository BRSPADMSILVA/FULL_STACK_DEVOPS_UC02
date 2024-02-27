def perguntar_cor_preferida():
    cor = input("Qual é a sua cor preferida? Vermelho ou verde? ").lower()
    return cor

def exibir_resposta(cor):
    print("Sua cor preferida é:", cor)

def main():
    cor_preferida = perguntar_cor_preferida()
    exibir_resposta(cor_preferida)

if __name__ == "__main__":
    main()
