class xd():
    def add(self, path):
        file = open(path, "r")
        file2 = open("LogActividades13.csv", "a")
        cont = 0
        cont2 = 0
        arr = []
        for x in file:
            arr = x.split(",")
            file2.write(arr[0]+','+arr[1]+','+arr[2]+','+arr[3]+','+arr[4]+'\n')
        file.close()

a = xd()
a.add("Logactividades12.csv")

# class xd():

#     def add(self, path):
#         file = open(path, "r")
#         file2 = open("LogActividades12.csv", "a")
#         cont = 33843
#         for x in file:
#             if cont == 33843:
#                 file2.write("idLogActividad" + "," + x)
#             else:
#                 file2.write(str(cont) + "," + x)  
#             cont += 1
#         file.close()

# a = xd()
# a.add("Logactividades1.csv")