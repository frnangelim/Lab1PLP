#include <stdio.h>
int mFuction(int x, int y);

// Dado quatro números inteiros m, n, o e p, determinar, entre todos os pares de números (x,y) tais que m<= x<= n e o<=y <=p,
// o par para o qual o valor da expressão x^2 - 3y + x seja máximo e calcular também esse máximo.

int mFuction(int x, int y){
	return (x*x) - (3*y) + x;
}

int main(){

	int m,n,o,p;

	scanf("%d", &m);
	scanf("%d", &n);
	scanf("%d", &o);
	scanf("%d", &p);

	int highest = mFuction(m,o);
	int valueX = m;
	int valueY = o;

	for(int x = m; x <= n; x++){
		for(int y = o; y <= p; y++){
			int temp = mFuction(x,y);
			if(temp > highest){
				highest = mFuction(x,y);
				valueX = x;
				valueY = y;
			}
		}
	}
	printf("(%d,%d)\n", valueX, valueY );
	printf("%d", highest);

	return 0;
}