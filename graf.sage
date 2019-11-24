velikosti = (20, 40, 75, 100, 200, 400, 800, 1000, 2000) #izberemo si velikosti grafov, na katerih bomo delali analizo. Zadnja številka je enaka številu vozlišč v socialnem omrežju s katerim bova primerjala rezultate
seznam_velikosti = list(velikosti)
povprecja = []
for i in velikosti:
    povprecja.append(algoritem(i)) #za vsako velikost poženemo algoritem, da dobimo povprečno pokritost
    print(povprecja[-1])

y_pos = np.arange(len(povprecja))
plt.bar(y_pos,povprecja,align = 'center',color=(0.2, 0.4, 0.6, 0.6))
plt.xticks(y_pos,velikosti)
plt.xlabel('Velikosti grafov')
plt.ylabel('Povprecja')
plt.title('Analiza povprecne pokritosti v razlicno velikih grafih')
#plt.show()
plt.savefig("graf.png")
