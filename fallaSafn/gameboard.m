function gameboard(boardmat)
% Notkun: spilabord(boardmat)
% Inntak: fylki boardmat, með tölum
% Úttak: Á skjáinn birtist spilaborð á forminu:
% ----------------...
% | 1 | 3 | 2 |
% ------------- ...
% | 5 | 4 | 3 |
% -------------
% | ...
% .
% .
% .
% Þar sem tölurnar eru stök fylkisins
    [size_x, size_y] = size(boardmat);

    % Fullvissum okkur um að það sé a.m.k. ein lína og einn dálkur í fylkinu
    if size_x == size_y && size_x > 0;
        
        % Búum til spilaborðið
        fprintf('\n\n')
        
        for row = 1:size_x
	
        	fprintf('          ')   % Hliðrar öllum --- línunum nema neðstu
        
        	for col = 1:size_y
    			fprintf('----') 	% Býr til allar --- línurnar nema neðstu
            end
		
    		fprintf('-\n          ')% Hliðrar línunum sem innihalda tölur
		
    		for col = 1:size_y
		
        	% Prentar tölurnar
            	if boardmat(row, col) == 0
        				fprintf('|   ')
            	% Prentar aðrar tölur en 0 eins og þær eru
                else
                		fprintf('| %d ', boardmat(row, col))
                end
            end
		
                fprintf('|\n')       % Býr til aftasta strikið í öllum línum með tölum
        end
	
        fprintf('          ')        % Hliðrar neðstu --- línunni
	
        for col = 1:size_x
        	fprintf('----')          % Býr til neðstu --- línuna
        end
	
    	fprintf ('-\n\n')            % Prentar síðasta bútinn í neðstu línuna
        
        
    else
        ffprintf('what have you done?')
    end
end

