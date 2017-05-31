#include <stdio.h>

int main(){

	int numeros[3];

	char palavra[20];

	char senha[3];

	for(int i = 0; i < 8; i++){
		if(i < 4){
			scanf("%d", &numeros[i]);
		}else{
			scanf("%s", palavra);
			senha[i-4] = palavra[numeros[i-4]];
		}
	}
	printf("%s", senha);

	return 0;
}