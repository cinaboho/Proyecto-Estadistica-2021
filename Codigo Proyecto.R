title: 'Proyecto de Estad?stica: An?lisis de Pruebas de Hepatitis tipo C'
author: "CRISTIAN ARREAGA , DIEGO BERREZUETA , CINDY BOHORQUEZ , JEIMY QUIMI  "
date: "11/21/2020"

---
  
  #Proyecto de Estad?stica: An?lisis de Pruebas de Hepatitis tipo C
  
  # llamamos al archivo


data = read.csv(url("https://archive.ics.uci.edu/ml/machine-learning-databases/00571/hcvdat0.csv"), header = TRUE)

data

# Variables 
#cambio

categoria= data$Category  # CAtegoria de pacientes segun Enfermedad
sexo= data$Sex     # Sexo del Paciente
edad= data$Age    # Edad del paciente

# Primer Objetivo :
#Verificar si existe asociaci?n estad?stica entre el tipo de la enfermedad y el sexo de la persona.

#Siendo:
# H0: El tipo de enfermedad es independiente del sexo
# H1: !H0

# Se hara una prueba de Independencia




#2. Verificar si existe asociaci?n estad?stica entre el tipo de la enfermedad y la edad de la persona.

#Siendo:
#H0: El tipo de enfermedad es independiente de la edad.
#H1: !H0








