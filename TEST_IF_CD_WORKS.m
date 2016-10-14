function TEST_IF_CD_WORKS(N, c, i, sip, j, sjq)


disp(' ')
disp(' ')
disp(' = = = = = = = = = = = = = = = = = = = = = = =')
disp(' = = = = = = = = = = = = = = = = = = = = = = =')

disp('CD')
disp('DP1 PAIR:')
disp([i j])

disp('Phi^CD = ')
value = Funkcja_CD(N, c, i, sip, j, sjq, @Function_of_Time, 0, 1);
disp(value);

disp('')
disp('nu^CD = ')
value = Funkcja_CD(N, c, i, sip, j, sjq, @Function_of_Time, 0, 2);
disp(value);

disp('')
disp('gamma^CD = ')
value = Funkcja_CD(N, c, i, sip, j, sjq, @Function_of_Time, 0, 3);
disp(value);

disp('')
disp('Fi^CD_r = ')
value = Funkcja_CD(N, c, i, sip, j, sjq, @Function_of_Time, 0, 4);
disp(value);

disp('')
disp('Fi^CD_p = ')
value = Funkcja_CD(N, c, i, sip, j, sjq, @Function_of_Time, 0, 5);
disp(value);


end