#import <Foundation/Foundation.h>

@interface Pessoas: NSObject
{
	int idade;
	int peso;
	NSString *nome;
}

-(void) setIdade: (int) i;
-(void) setPeso: (int) p;
-(void) setNome: (NSString *) n;
-(void) imprimir;

@end

@implement Pessoas

-(void) setIdade: (int) i{
	idade = i;
}

-(void) setPeso: (int) p{
	peso = p;
}

-(void) setNome: (NSString *) n{
	nome = n;
}

-(void) imprimir{
	NSSlog(@"Olá me chamo %@ e tenho %i anos de idade e peso %i kg.", nome, idade, peso);
}

@end


int main(int argc, const char * argv[])
{
	// Nas novas versões do SDK não é necessário allocar ou liberar memória, isso é feito automaticamente.
	@autoreleasepool {
		Pessoas *mulher = [[Pessoas alloc]init];
		[mulher setIdade:25];
		[mulher setPeso:50];
		[mulher setNome:@"Júlia Evangelista"];
		[mulher imprimir];
	}

	return 0;
}