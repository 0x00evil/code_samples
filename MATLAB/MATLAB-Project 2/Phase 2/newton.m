function x = newton(x,Fg, Fgprime, tol)
%
% Usage:  x = newton(x, Fb, Fgprime, tol)
%
% This routine solves the scalar-valued nonlinear equation f(x)=0 
% using the newton method to a residual tolerance of tol.
%
% inputs:   x       initial guess  
%           tol     REAL solution tolerance
%           Fg      function
%           Fgprime dydx    
% outputs:  x       REAL solution 
%
% Aaron krauss
% Math3315/CSE3365
% Spring 2010
%

% initialization

f = feval(Fg,x);
fprime = feval(Fgprime,x);


maxit = 100;
disp(sprintf('\nit) x             f(x)\n'));
for i=1:maxit
    x = x - (f/fprime);
    
    f = feval(Fg,x);
    fprime = feval(Fgprime,x);
    
    disp(sprintf('%d) %1.4f   f(x) = %1.4f',i,x,f));
    
    if(abs(f)<tol)
        break;
    end
        
end



