function TEST_IF_DP1_WORKS(N, i, a_bar_1, j, a_bar_2)


disp(' ')
disp(' ')
disp(' = = = = = = = = = = = = = = = = = = = = = = =')
disp(' = = = = = = = = = = = = = = = = = = = = = = =')

disp('DP1 PAIR:')
disp([i j])

disp('Phi^DP1 = ')
value = Funkcja_DP1(N, i, a_bar_1, j, a_bar_2, @Function_of_Time, 0, 1);
disp(value);

disp('')
disp('nu^DP1 = ')
value = Funkcja_DP1(N, i, a_bar_1, j, a_bar_2, @Function_of_Time, 0, 2);
disp(value);

disp('')
disp('gamma^DP1 = ')
value = Funkcja_DP1(N, i, a_bar_1, j, a_bar_2, @Function_of_Time, 0, 3);
disp(value);

disp('')
disp('Fi^DP1_r = ')
value = Funkcja_DP1(N, i, a_bar_1, j, a_bar_2, @Function_of_Time, 0, 4);
disp(value);

disp('')
disp('Fi^DP1_p = ')
value = Funkcja_DP1(N, i, a_bar_1, j, a_bar_2, @Function_of_Time, 0, 5);
disp(value);

end