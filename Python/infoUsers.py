# Menú Python GITHUB
# Roberto Negrete García
# 26/02/24

import os

if os.getuid() != 0:
    print("Necesitas ejecutar como root")
    exit()

print("1- Mostrar información del SSOO y CPU")
print("2- Mostrar infomación de usuario")
print("3- Mostrar directorio")
print("4- Salir")

opt = input("Ingrese su opcion: ")
cpu = os.popen("lscpu").read()


while True:
    if opt == "1":
        print("SSOO", os.uname())
        print("CPU", cpu)
        break

    elif opt == "2":
        cont = 0
        user = input("Ingrese un usuario: ")
        r = open("/etc/passwd", "r")
        lines = r.readlines()

        for i in lines:
            if user in i:
                cont = 1

        if cont == 1:
            print("El usuario existe")
            info = os.popen(f'cat /etc/passwd | grep {user}').read()
            print(info)

        else:
            print("El usuario no existe")
            os.system("useradd " + user)
            r.close()

    elif opt == "3":
        directorio = input("Ingrese un directorio: ")
        ruta = os.path.exists(directorio)
        print(ruta)

        if not ruta:
            os.mkdir(directorio)
            print("Ruta creada")

    elif opt == "4":
        print("Saliendo...")
        exit()
