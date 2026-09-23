#include <stdio.h>
#include <stdint.h>
#include <math.h>
void hadamard_q7(int8_t a[2]) {
  int s=91;
  int n0 = ((a[0]*s)>>7) + ((a[1]*s)>>7);
  int n1 = ((a[0]*s)>>7) - ((a[1]*s)>>7);
  a[0]=(int8_t)n0; a[1]=(int8_t)n1;
}
int main(void){
  int8_t psi[2]={127,0};
  hadamard_q7(psi);
  printf("QubitPulse H|0> Q7 [%d,%d] norm~=%.4f\n", psi[0], psi[1],
         hypot(psi[0]/127.0, psi[1]/127.0));
}
