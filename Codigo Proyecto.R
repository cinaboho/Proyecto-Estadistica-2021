#title: 'Proyecto de Estad?stica: An?lisis de Pruebas de Hepatitis tipo C'
#author: "CRISTIAN ARREAGA , DIEGO BERREZUETA , CINDY BOHORQUEZ , JEIMY QUIMI  "
#date: "11/21/2020"

---
library(data.table)
  #Proyecto de Estad?stica: An?lisis de Pruebas de Hepatitis tipo C
  
  #llamamos al archivo
ruta_csv <- "hcvdat0.csv"
bd <- read.csv(ruta_csv)
head(bd)


#data

# Variables 
#cambio

#categoria= data$Category  # CAtegoria de pacientes segun Enfermedad
#sexo= data$Sex     # Sexo del Paciente
#edad= data$Age    # Edad del paciente

# Primer Objetivo :
#Verificar si existe asociaci?n estad?stica entre el tipo de la enfermedad y el sexo de la persona.

#Siendo:
# H0: El tipo de enfermedad es independiente del sexo
# H1: !H0

# Se hara una prueba de Independencia

#cambio2


#2. Verificar si existe asociaci?n estad?stica entre el tipo de la enfermedad y la edad de la persona.

#Siendo:
#H0: El tipo de enfermedad es independiente de la edad.
#H1: !H0
#------------------Proceso------------------#
#. Tenemos edades desde los 19 hasta los 70 y pico
#  Haremos 3 categorias

#Jóvenes (19-35 años)
#Adultos(36-50 años)
#Vejez(51 años en adelante)

#Separo la columna edades de la base de
#datos a un datafram de una 1 sola columna
edades<-bd$Age
edad=data.frame(edades)

#-----------------JOVENES-----------------#
#Tomo el vector anterior y aplico la funcion
#cut que sirve para cortar vectores, analizare
#los intervalos (18,35] y sabre cuantas personas
# existen para CADA edad
cant_porEdad_jovenes<-table(cut(edades, breaks = 18:35))
#cant_porEdad_jovenes
#Para mejor visualizacion los pondremos en una tabla
cant1<-data.frame(cant_porEdad_jovenes)
colnames(cant1)<-c("edad_Jovenez","No Personas")
cant1
#Sumare el numero de personas que tienen edades entre
#19 y 35 anios
total_de_jovenes=sum(table(cut(edades, breaks = 18:35, labels = FALSE)))
total_de_jovenes
#A continuación haré lo mismo para el segmento
#de adultos y vejez
#-----------------ADULTOS-----------------#
cant_porEdad_adultos<-table(cut(edades, breaks = 35:50))
#cant_porEdad_adultos
total_de_adultos=sum(table(cut(edades, breaks = 35:50, labels = FALSE)))
total_de_adultos
#Para mejor visualizacion los pondremos en una tabla
cant2<-data.frame(cant_porEdad_adultos)
colnames(cant2)<-c("edad_Adultos","No Personas")
cant2
#------------------VEJEZ------------------#
cant_porEdad_vejez<-table(cut(edades, breaks = 50:80 ))
#cant_porEdad_vejez
total_de_vejez=sum(table(cut(edades, breaks = 50:80 , labels = FALSE)))
total_de_vejez
#Para mejor visualizacion los pondremos en una tabla
cant3<-data.frame(cant_porEdad_vejez)
colnames(cant3)<-c("edad_Vejez","No Personas")
cant3






