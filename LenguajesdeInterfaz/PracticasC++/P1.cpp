#include <iostream>
#include <math.h>
#include <string.h>

/*
Problema 11. Imprimir una tabla de cuadrados, cubos y raíces cuartas
de los primeros veinte números
*/

//@Autor: Grecia Cortes (@Nyoseka)
//@Fecha: 16 Septiembre 2021

using namespace std;

//Método para calcular raíz cuarta, se toma la raíz como 1/4=0.25
double RaizCuarta(double x)
{
    return pow(x,0.25);
}

int main() {

    /*Bucle for con un contador del 1 al 20 para los valores,
       uso de la librería math para operaciones matemáticas y Método
       pow para potencias, raíz se hizo con el método realizado*/
       
    for(int c=1; c<=20; c++)
    {
        cout<<"x="<<c<<", "<<"Cuadrado: "<<pow(c,2)<<", Cubo: "<<pow(c,3)<<", Raíz Cuarta: "<<RaizCuarta(c)<<"\n";
    }
    return 0;
}
