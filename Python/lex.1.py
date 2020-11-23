#Askisi 1.

from itertools import count

#synarthsh poy ypologizei 5 megalyteres lexeis

def longest_word(lst, K):
    cnt = count()
    return sorted(lst, key=lambda w: (len(w), next(cnt)), reverse=True)[:K]

#diabasma arxeiou

f= open('test.txt','r')
lista1 = f.read()
lista1 =lista1.split()

#Kalw kai vriskv ta megalytera stoixeia

lista = longest_word(lista1,5)

#Bgazw ta fwnhenta
fwnhenta = ['a', 'e', 'i', 'o',' u',' y']

for i in range (4):
    for fwnhen in ['a', 'e', 'i', 'o',' u',' y']:
        if fwnhen in lista[i]:
            lista[i] = lista[i].replace(fwnhen,'')

#anapodi ektypwsh

for i in range (4):
    print(lista[i][::-1])
