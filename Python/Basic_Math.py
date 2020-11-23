#Askisi 8


#Synarthsh gia na ypologiso to athroisma mexri na ginei monopshfio

def digital_root(n):
    x = sum(int(digit) for digit in str(n))
    if x < 10:
        return x
    else:
        return  digital_root(x)

#Eisagw aritho apo to plhktologio

x=input('dwse ena 4pshfio arithmo')
x1 = x
x=3*int(x) +1
z=digital_root(x)

print('o arxikos arithmos einai o :',x1,'Kai to atroisma tou :',z)