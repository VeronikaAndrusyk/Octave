while true
  x= input ('Input number x:')

  if x<= 7
    result=sqrt(1+abs(x));
  elseif x < 9
     result = sin(x);
  else
     result = (1+x^2)/(sqrt(1+x^4));
   endif

   disp(result);

   s= menu('Continue?', 'y','n');
if s==2
  break;
endif
end
