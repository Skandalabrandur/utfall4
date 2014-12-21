function [] = typewriter( lalastring, speed )
    %speed is the time delay in seconds between the printing of chars from
    %string
    
    %lalastring is the string to be printed
    for i=1:length(lalastring)
        clc
        fprintf(lalastring(1:i))
        sleep(speed)
    end
end
