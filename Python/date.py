import datetime

#eisagw hmeromominia sthn morfh kai kanw kwdikopoihsh

date_entry = input('Eisagete hmeromhnia sthn morfh HH/MM/EEEE ')
day, month, year = map(int, date_entry.split('/'))
date1 = datetime.date(year, month, day)

#Pairnv thn hmeromhnia tou systhmatos

date2 = datetime.date.today()

#Kanw thn afairesh gia na brw tiw meres

if (date2 > date1):
    delta = date2 - date1
else:
    delta = date1-date2

delta = date2 - date1

#Ypologizv ta deyterolepta
sec = delta.total_seconds()

#Ypologizv tis wres

hours = sec//3600

#Ypologizv poses merew exei o mhnas

daysOfMonths = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for x in range(1,12):
    if int(month) == x :
        daysmonths = daysOfMonths[x-1]

#Ektypwnw apotelesmata

print("Apexoume \n",delta,"\n",hours,"Hours \n",sec,"seconds \n",daysmonths,"daysOfmonths")
