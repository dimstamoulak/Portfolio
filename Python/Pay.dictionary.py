#Askisi 3

#Synartisi poy ypologizei to poso pliromis

def poso_pliromis(lista, x):
    x = float(x) / 100 #kanw pososto ton foro
    sum=0
    for i in dict_lista:
        y=int(dict_lista.get(i))
        sum = sum + y
    poso = sum*x+sum
    return(poso)

#Dictionary me katalogo agwrwn gia na dw an trexei

dict_lista={'Patates':4,'ntomates':3,'Agouria':7,'Piperies':4}
lista=list(dict_lista)
x=24
poso = poso_pliromis(lista,x)
print(poso)
