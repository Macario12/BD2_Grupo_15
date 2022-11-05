class xd():
    def add(self, path):
        file = open(path, "r")
        file2 = open("LogActividades12.csv", "a")
        cont = 0
        for x in file:
            if cont == 0:
                file2.write("idLogActividad" + "," + x)
            else:
                file2.write(str(cont) + "," + x)  
            cont += 1
        file.close()

a = xd()
a.add("Logactividades1.csv")