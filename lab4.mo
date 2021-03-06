model lab4

//Парамертры осциллятора
//x'' + g* x' + w^2* x= f(t)

/*Для первого случая:
parameter Real w= sqrt(12.0);
parameter Real g= 0.0;*/

/*Для второго случая:
parameter Real w= sqrt(2.0);
parameter Real g= 11.0; */

/*Для третьего случая:*/
parameter Real w= sqrt(2.0);
parameter Real g= 2.0;

parameter Real x0= 0.5;
parameter Real y0= 1.0;

Real x(start=x0);
Real y(start=y0);

//Правая часть уравнения f(t)
function f 
  input Real t;
  output Real result;
algorithm
  //result := 0; //for 1 and 2 
  result := 2.0*cos(2.0*t); //for 3
end f;

equation

der(x) = y;
der(y) = -w*w*x - g*y -f(time);

end lab4;
