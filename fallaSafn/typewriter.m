function [] = typewriter( lalastring, speed )
%speed er hversu margar sekúndur líða á milli uppfærslna á streng
%lalastring er strengurinn sem á að skrifa út
for i=1:length(lalastring)
    clc
    fprintf(lalastring(1:i))
    sleep(speed)
end

end