#include "student.hpp"
// ===============
// implementations

int add(int a, int b)
{
   return a+b; // TODO: fix
}

// Exercise 2: implements function 'mul', that multiplies two numbers
int mul(int a, int b)
{
   return a * b; // TODO: fix
}

// Exercise 3: implements function 'sub', that subtracts two numbers
int sub(int a, int b)
{
   return a - b;
}

// Exercise 4: implements function 'div', that divides two numbers, returns 0 if divisor is 0
int div(int a, int b)
{
   if (b == 0) {
      return 0;
   }
   return a / b;
}