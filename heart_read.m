function heart_read(cale)																	%calea este reprezentata de path-ul pana la teste
folder_curent=pwd;																			%retin in folder_curent folderul in care se afla functiile implementate de mine

cd(cale);
A=load('heart1.dat');																		%Citesc in matricea A continutul fisierului cu informatiile utile
x=A(:,1);																					%in vectorul x retin prima coloana
y=A(:,2);																					%retin in y a 2 a coloana
h(1)=A(1,3);																				%retin in h inaltimea
cd(folder_curent);																			%ma intorc in folderul curent unde voi apela functiile trapez si monte_carlo
arie1(1)=Trapez(x,y);																		%aceasta functie va genera aria suprafetei care va fi retinuta in vectorul de arii :arie1
arie2(1)=Monte_Carlo(x,y,0.1);

cd(cale);
A=load('heart2.dat');
x=A(:,1);
y=A(:,2);
h(2)=A(1,3);
cd(folder_curent);
arie1(2)=Trapez(x,y);
arie2(2)=Monte_Carlo(x,y,0.1);

cd(cale);
A=load('heart3.dat');
x=A(:,1);
y=A(:,2);
h(3)=A(1,3);
cd(folder_curent);
arie1(3)=Trapez(x,y);
arie2(3)=Monte_Carlo(x,y,0.1);

cd(cale);
A=load('heart4.dat');
x=A(:,1);
y=A(:,2);
h(4)=A(1,3);
cd(folder_curent);
arie1(4)=Trapez(x,y);
arie2(4)=Monte_Carlo(x,y,0.1);

cd(cale);
A=load('heart5.dat');
x=A(:,1);
y=A(:,2);
h(5)=A(1,3);
cd(folder_curent);
arie1(5)=Trapez(x,y);
arie2(5)=Monte_Carlo(x,y,0.1);

cd(cale);
A=load('heart6.dat');
x=A(:,1);
y=A(:,2);
h(6)=A(1,3);
cd(folder_curent);
arie1(6)=Trapez(x,y);
arie2(6)=Monte_Carlo(x,y,0.1);

cd(cale);
A=load('heart7.dat');
x=A(:,1);
y=A(:,2);
h(7)=A(1,3);
cd(folder_curent);
arie1(7)=Trapez(x,y);
arie2(7)=Monte_Carlo(x,y,0.1);

cd(cale);
A=load('heart8.dat');
x=A(:,1);
y=A(:,2);
h(8)=A(1,3);
cd(folder_curent);
arie1(8)=Trapez(x,y);
arie2(8)=Monte_Carlo(x,y,0.1);

cd(cale);
A=load('heart9.dat');
x=A(:,1);
y=A(:,2);
h(9)=A(1,3);
cd(folder_curent);
arie1(9)=Trapez(x,y);
arie2(9)=Monte_Carlo(x,y,0.1);

																							%afisez ariile generate cu trapezul
for i=1:9
    fprintf('%.3f ',arie1(i));
end

fprintf('\n');

																							%afisez ariile generate cu monte_carlo
for i=1:9
    fprintf('%.3f ',arie2(i));
end

fprintf('\n');
V1=0;																						%In V1 voi adauga volum inimii obtinut cu ajutorul ariile generate cu trapezul

for i=2:9
    V1=V1+((h(i)-h(i-1))*(arie1(i)+arie1(i-1))/2);											%deoarece sectiunile au arii diferite volumul dintre 2 sectiuni se poate obtine cu teorema trapezului(B+b)*h/2
end

V2=0;																						%In V2 voi adauga volum inimii obtinut cu ajutorul ariile generate cu Monte_Carlo

for i=2:9
    V2=V2+((h(i)-h(i-1))*(arie2(i)+arie2(i-1))/2);
end

fprintf('%.3f ',V1);
fprintf('%.3f ',V2);
fprintf('\n');
end