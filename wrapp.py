print("PROGRAMA QUE REALIZA OPERACIONES CON 2 NUMEROS")
num1 = input ("Ingresa el primer numero \n")
num2 = input ("Ingresa el segundo numero \n")
val1 = float (num1)
val2 = float (num2)

def suma(val1=0, val2=0):
  return val1 + val2

def resta(val1=0, val2=0):
  return val1-val2

def operacion(funcion, val1=0, val2=0):
  return funcion(val1, val2)

funcion_suma = suma
funcion_resta = resta
funcion_mul = mul
funcion_div = div
resultado = operacion(funcion_suma, val1, val2)
resultado2 = operacion(funcion_resta, val1, val2)
resultado3 = operacion(funcion_mul, val1, val2)
resultado4 = operacion(funcion_div, val1, val2)
print("La suma es:",resultado)
print("La resta es:",resultado2)
print("La multiplicacion es:",resultado3)
print("La division es:",resultado4)
