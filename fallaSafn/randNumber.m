function A = randNumber
%Gives a random number from 1-3 with shifted probabilites
%1 is most likely, 2 is around 20% and 3 around 10% of the time
    rander = ceil(rand * 10);
    if(rander >= 10)
        A=3;
    elseif(rander < 10 && ge(rander, 8))
        A=2;
    else
        A=1;
    end
end
