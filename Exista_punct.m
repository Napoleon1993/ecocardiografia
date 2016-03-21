function exista=Exista_punct(N,x,y,xgen,ygen)

																							%aceasta functie verifica daca un punct este in interiorul sau exteriorul unui polinom.
																							%Functia primeste ca parametru N=numarul de puncte de pe contur 
																							%x = coord x a punctelor de pe contur 
																							%y= coord y a punctelorr de pe contur si coordonatele punctul care trebuie verificat
  exista = -1;																				%presupunem ca punctul nu exista
  j=N; 
 for i=1:N 																				    %se verifica urmatorul if si daca este adevarat inseamna ca punctul este in interior
    if ((y(i)>ygen)~=(y(j)>ygen))&&(xgen<((x(j)-x(i))*(ygen-y(i))/(y(j)-y(i))+x(i)))
       exista = -1*exista;
    end
    j=i;
  end
end