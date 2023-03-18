import sys
from os import system

try:

    while True:
        print("******  MENU PRACTICA 1 - 201700761 ******")
        print("a. Borrar Modelo")
        print("b. Crear Modelo")
        print("c. Extraer Información")
        print("d. Cargar Información")
        print("e. Consultas")
        print("f. Salir")
        opc = input("Ingrese una opción:   ")

        if opc == "a":
            print("Borrar Modelo")
            system("sqlcmd -i C:\\Users\\elder.DESKTOP-81GR7TM\\Documents\\USAC\\Semi2\\Lab\\Repo\\Practicas\\Practica1\\borrarModelo.sql")
            print("\nBorrado completado")
        elif opc == "b":
            print("Crear Modelo")
            system("sqlcmd -i C:\\Users\\elder.DESKTOP-81GR7TM\\Documents\\USAC\\Semi2\\Lab\\Repo\\Practicas\\Practica1\\crearModelo.sql")
            print("\nModelo generado satisfactoriamente")
        elif opc == "c":
            print("Extracción de Datos de CSV")
            system("sqlcmd -i C:\\Users\\elder.DESKTOP-81GR7TM\\Documents\\USAC\\Semi2\\Lab\\Repo\\Practicas\\Practica1\\extraerInfo.sql")
            print("\nInformación obtenida satisfactoriamente")
        elif opc == "d":
            print("Cargar Datos de CSV")
            system("sqlcmd -i C:\\Users\\elder.DESKTOP-81GR7TM\\Documents\\USAC\\Semi2\\Lab\\Repo\\Practicas\\Practica1\\cargaMasiva.sql")
            print("\nInformación cargada satisfactoriamente")
        elif opc == "e":
            menuConsultas = False
            
            while not menuConsultas:
                print("***** MENU CONSULTAS *****")
                print("a. Consulta #1")
                print("b. Consulta #2")
                print("c. Consulta #3")
                print("d. Consulta #4")
                print("e. Consulta #5")
                print("f. Consulta #6")
                print("g. Consulta #7")
                print("h. Consulta #8")
                print("i. Consulta #9")
                print("j. Consulta #10")
                print("k. Regresar al Menú Principal")
                opc2 = input("Ingrese una opción:   ")

                if opc2 == "a":
                    print("Consulta #1")
                    system("sqlcmd -i C:\\Users\\elder.DESKTOP-81GR7TM\\Documents\\USAC\\Semi2\\Lab\\Repo\\Practicas\\Practica1\\Consultas\\Consulta1.sql")
                elif opc2 == "b":
                    print("Consulta #2")
                    system("sqlcmd -i C:\\Users\\elder.DESKTOP-81GR7TM\\Documents\\USAC\\Semi2\\Lab\\Repo\\Practicas\\Practica1\\Consultas\\Consulta2.sql")
                elif opc2 == "c":
                    print("Consulta #3")
                    system("sqlcmd -i C:\\Users\\elder.DESKTOP-81GR7TM\\Documents\\USAC\\Semi2\\Lab\\Repo\\Practicas\\Practica1\\Consultas\\Consulta3.sql")
                elif opc2 == "d":
                    print("Consulta #4")
                    system("sqlcmd -i C:\\Users\\elder.DESKTOP-81GR7TM\\Documents\\USAC\\Semi2\\Lab\\Repo\\Practicas\\Practica1\\Consultas\\Consulta4.sql")
                elif opc2 == "e":
                    print("Consulta #5")
                    system("sqlcmd -i C:\\Users\\elder.DESKTOP-81GR7TM\\Documents\\USAC\\Semi2\\Lab\\Repo\\Practicas\\Practica1\\Consultas\\Consulta5.sql")
                elif opc2 == "f":
                    print("Consulta #6")
                    system("sqlcmd -i C:\\Users\\elder.DESKTOP-81GR7TM\\Documents\\USAC\\Semi2\\Lab\\Repo\\Practicas\\Practica1\\Consultas\\Consulta6.sql")
                elif opc2 == "g":
                    print("Consulta #7")
                    system("sqlcmd -i C:\\Users\\elder.DESKTOP-81GR7TM\\Documents\\USAC\\Semi2\\Lab\\Repo\\Practicas\\Practica1\\Consultas\\Consulta7.sql")
                elif opc2 == "h":
                    print("Consulta #8")
                    system("sqlcmd -i C:\\Users\\elder.DESKTOP-81GR7TM\\Documents\\USAC\\Semi2\\Lab\\Repo\\Practicas\\Practica1\\Consultas\\Consulta8.sql")
                elif opc2 == "i":
                    print("Consulta #9")
                    system("sqlcmd -i C:\\Users\\elder.DESKTOP-81GR7TM\\Documents\\USAC\\Semi2\\Lab\\Repo\\Practicas\\Practica1\\Consultas\\Consulta9.sql")
                elif opc2 == "j":
                    print("Consulta #10")
                    system("sqlcmd -i C:\\Users\\elder.DESKTOP-81GR7TM\\Documents\\USAC\\Semi2\\Lab\\Repo\\Practicas\\Practica1\\Consultas\\Consulta10.sql")
                elif opc2 == "k":
                    menuConsultas = True

        elif opc == "f":
            sys.exit()

except:
    print("Error al conectarse a la db")