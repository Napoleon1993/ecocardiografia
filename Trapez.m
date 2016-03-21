function I=Trapez(x,y)
suma = 0;																					%initializez suma cu 0
lungime = length(x);
for i=1:lungime-1
    suma=suma+((x(i+1)-x(i))*(y(i+1)+y(i)));												%retin in variabila suma suma produselor dintre (B+b)*h
end
I=abs(suma/2);																				%facem suma pozitiva si aflam aria impartind suma la 2
end