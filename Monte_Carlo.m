function I=Monte_Carlo(x,y,tol)
latura = ( max( max(x)-min(x) , max(y)-min(y) ) );%max(x)-min(x)determina distanta maxima pe ox 
                                                  %max(y)-min(y)determina distanta maxima pe oy
                                                  %latura patratului va fi maximul dintre cele 2 distante maxime de pe oy si ox
I=0;%initializez aria cu 0;
Nint=1;%voi lua numarul de puncte din interiorul curbei inchise = 1 pentru a putea intra in while
N=125;
while abs((Nint*latura*latura/N)-(2*Nint*latura*latura/N))>=tol && N<1024
    N=2*N;%dublez numarul de puncte
    [xgen,ygen]=Gen2DPoints(N,min(x),min(x)+latura,min(y),min(y)+latura);%generez puncte pseudo-aleatoare si uniforme
    Nint=0;%de fiecare data presupun ca sunt 0 puncte in interior 
    for i=1:N
        ok=Exista_punct(length(x),x,y,xgen(i),ygen(i));%daca variabila ok =1 inseamna ca punctul de pe pozitia i este in interior
        if ok==1 
            Nint=Nint+1;%cresc numarul de puncte interioare daca ok==1 
        end
    end
    I=Nint*latura*latura/N;%fac aria pentru N puncte 
    end
end