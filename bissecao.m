function main 
clear
clc
  a=0;
  b=1;
  fa=funcao(a);
  fb=funcao(b);  
  erro=10^-5;
  k=0; %numero interacoes
  fxm=1;
  while (abs(fxm)>erro)
      k=k+1;
      xm=(a+b)/2; %aproximacao da raiz
      fxm=funcao(xm);
      pause
      if (fa*fxm<0)
         b=xm;
         fb=fxm;
      else 
        a=xm;
        fa=fxm;
      endif
  end
  k
  xm %raiz
  fxm %precisao: |fxm|<erro
end
function f=funcao(x)
  %f=exp(x)-2*cos(x); %moodle
  %f=exp(x)*sin(x)-1; %aula
  f = 10 - 20*(exp(-0.2*x) - exp(-0.75*x)) - 5; %teste
  %f= (x^2)-5; %lista
 end
 main
