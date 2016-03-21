function [x, y] = Gen2DPoints(N,a,b,c,d)
n=floor(sqrt(N));                                                                           %am impartit planul [a,b]X[c,d]in n patrate/dreptunghiuri.n fiind reprezentat de cel mai mare patrat perfect mai mic decat numarul de puncte
                                                                                            %In total aria [a,b]x[c,d] are n^2 patrate.Fiecare patrat/dreptunghi va avea cate un punct generat random random.
pas1=(b-a)/n;                                                                               %pasul1 reprezinta constanta care ma va ajuta sa avansez pe  axa OX
pas2=(d-c)/n;                                                                               %pasul2 reprezinta constanta care ma va ajuta sa avansez pe axa OY
aux1=a;                                                                                     %aux1 imi va delimita coordonata patratelor/dreptunghiurilor de pe axa Ox
for k=1:n*n                                                                                 %deoarece vom avea n patrate/dreptunghiuri pe orizontala si n patrate/dreptunghiuri pe verticala , 
                                                                                            %pentru fiecare patrat/dreptunghi de pe axa OX vom alege n valori care se vor corela cu o valoare dintr-un patrat de pe axa OY
    x(k)=aux1+pas1*rand();
    if mod(k,n)==0                                                                          %verifica daca am determinat cele n coordonata dintr-un patrat/dreptunghi de pe axa Ox 
        aux2=c;                                                                             %aux2 imi va delimita coordonata patratelor/dreptunghi de pe axa Oy
        for j=k-n+1:k
            y(j)=aux2+pas2*rand();
           aux2=aux2+pas2;                                                                  %trecem la urmatorul dreptunghi sau patrat
        end
        aux1=aux1+pas1;                                                                     %trecem la urmatorul patrat sau dreptunghi
    end 
end
if N~=n*n
    x1=a+(b-a).*rand(1,N-n*n);                         %in cazul in care N nu este patrat perfect vom mai adauga diferenta de puncte random in intervalul [a b] deoarece majoritatea punctelor este distribuita random si uniform
    y1=c+(d-c).*rand(1,N-n*n);
    x=[x x1];
    y=[y y1];
end
end