function gameboard(boardmat)
% Notkun: spilabord(boardmat)
% Inntak: fylki boardmat, me� t�lum
% �ttak: � skj�inn birtist spilabor� � forminu:
% ----------------...
% | 1 | 3 | 2 |
% ------------- ...
% | 5 | 4 | 3 |
% -------------
% | ...
% .
% .
% .
% �ar sem t�lurnar eru st�k fylkisins
    [size_x, size_y] = size(boardmat);

    % Fullvissum okkur um a� �a� s� a.m.k. ein l�na og einn d�lkur � fylkinu
    if size_x == size_y && size_x > 0;
        
        % B�um til spilabor�i�
        fprintf('\n\n')
        
        for row = 1:size_x
	
        	fprintf('          ')   % Hli�rar �llum --- l�nunum nema ne�stu
        
        	for col = 1:size_y
    			fprintf('----') 	% B�r til allar --- l�nurnar nema ne�stu
            end
		
    		fprintf('-\n          ')% Hli�rar l�nunum sem innihalda t�lur
		
    		for col = 1:size_y
		
        	% Prentar t�lurnar
            	if boardmat(row, col) == 0
        				fprintf('|   ')
            	% Prentar a�rar t�lur en 0 eins og ��r eru
                else
                		fprintf('| %d ', boardmat(row, col))
                end
            end
		
                fprintf('|\n')       % B�r til aftasta striki� � �llum l�num me� t�lum
        end
	
        fprintf('          ')        % Hli�rar ne�stu --- l�nunni
	
        for col = 1:size_x
        	fprintf('----')          % B�r til ne�stu --- l�nuna
        end
	
    	fprintf ('-\n\n')            % Prentar s��asta b�tinn � ne�stu l�nuna
        
        
    else
        ffprintf('what have you done?')
    end
end

