from json import dump
povprecja = algoritem_sub(400, izpisi=True)
with open("povprecja_sub.json", "w") as f:
    dump(povprecja, f)
