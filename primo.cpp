#include <stdio.h>
bool ehPrimo(int n);

bool ehPrimo(int n){
    int d, ehPrimo;


    if (n <= 1 || (n != 2 && n % 2 == 0))
        ehPrimo = false;
    else
        ehPrimo = true;


    d = 3;
    while (ehPrimo  && d <= n / 2) {
        if (n % d == 0)
            ehPrimo = 0;
        d = d + 2;
    }

    if (ehPrimo)
        return true;
    else
        return false;
}

int main(){

    int num;
    scanf("%d", &num);

    if(ehPrimo(num) && ehPrimo(num+2)){
        printf("PRIMO CASADO!");
    }else if(ehPrimo(num)){
        printf("PRIMO!");
    }else{
        printf("NAO PRIMO!");
    }

    return 0;
}