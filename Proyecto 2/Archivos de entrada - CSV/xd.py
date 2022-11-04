class xd():
    def add(self, path):
        file = open(path, "r")
        file2 = open("LogHabitaciones2.csv", "a")
        cont = 0
        for x in file:
            if cont is 0:
                file2.write("idLogHabitacion" + "," + x)
            else:
                file2.write(str(cont) + "," + x)  
            cont += 1
        file.close()

a = xd()
a.add("LogHabitaciones.csv")