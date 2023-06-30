function [o,e] = an3(a)
o = sum(a(mod(a,2)==0),1)
e = sum(a(mod(a,2)==1),1)
end