#import <Foundation/Foundation.h>
#import <math.h>

/*
	Calculo do imc
	@author Kaio Cesar
	@data 2015-05-03 00:10:00
*/

// Programa principal
int main (int argc, const char * argv[])
{

    // reserva memoria para utilizar neste programa
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // declaração de variaveis do tipo int
    char nome[] = "Kaio Cesar";
    int idade = 24;
    int altura = 189;
    int peso = 80.00;
    
    float imc = peso / pow(altura, 2.00);

    NSLog (@"Olá %s \n Você tem %i anos de idade, peso %i kg e %i m de altura \n Seu IMC =  %f", nome, idade, peso, altura, imc);
    
    // devolve a memoria utilizada
    [pool drain];

    // como toda função precisa retornar algo (falando de c) então retornamos ZERO    
    return 0;
    
}
