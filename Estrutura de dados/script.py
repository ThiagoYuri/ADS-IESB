# função reponsavel por selecionar os aparti do numero informado
def procurar_numero(lista):
    numero = int(input("Digite o numero que deseja procurar na lista: "))
    if numero in lista:
        print(f"O numero {numero} esta na lista.")
    else:
        print(f"O numero {numero} nao esta na lista.")

# Função responsavel por ordenar e printar a lista
def ordenar_lista(lista):
    escolha = input("Deseja ordenar a lista em ordem digite (c) - crescente ou (d) - decrescente: ")
    if escolha == "c": 
        lista.sort()
        print("Lista ordenada em ordem crescente:", lista)
    elif escolha == "d":
        lista.sort(reverse=True)
        print("Lista ordenada em ordem decrescente:", lista)
    else:
        print("Escolha invalida. digite o texto 'crescente' ou 'decrescente'.")
        
# Lista 
lista = [2,4,8,11,13,18,1,52,25,99,100,101,]
# Primeira função que ira filtrar a lista
procurar_numero(lista)
# Segunda função que ira ordena e mostrar a lista 
ordenar_lista(lista)