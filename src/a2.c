#include<stdio.h>

int main(){
  int A[] = {1, 2, 3, 4};
  int B[] = {5, 6, 7, 8};
  int la = sizeof(A) / sizeof(int);
  int lb = sizeof(B) / sizeof(int);
  if(la != lb){
    printf("size of A isn't equal to size of B.\n");
    return 0;
  }
  for(int i=0; i<la; i++) printf("%d\n", A[i]+B[lb-i-1]);
  return 0;
}
