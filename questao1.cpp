# include <stdio.h>

int main(){
	int var;
	int cont = 0;
	scanf("%d", &var);
	while(var != 0){
		if(var < 0){
			cont++;
		}
		scanf("%d", &var);
	}
	printf("%d", cont);

	return 0;
}