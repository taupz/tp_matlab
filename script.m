% Execution des algorithmes de recherche de zero

% -------------------- Racine reelle du polynome -------------------- %
p = [1 4 0 -10];
trueValue = roots(p);
trueValue = real(trueValue(find(imag(trueValue) == 0)));
disp(['zero reel de la fonction : ' num2str(trueValue) newline]);



% -------------------- Algorithme de dichotomie -------------------- %
[dichotomic_value, nbIterDichotomie, errDichotomie] = dichotomic_func(0, 5, 10^-3, 100, trueValue);

total_time = 0;
total_error = 0;
for i = 1:100
    t_start = clock;
    [a , b , c] = dichotomic_func(0, 5, 10^-6, 100, trueValue);
    t_end = clock;
    exec_time = etime(t_end, t_start);
    total_time = total_time + exec_time;
    total_error = total_error + c;
end
averageTimeDichotomie = total_time/100;
averageErrDichotomie = total_error/100;


disp(['Zero approche par dichotomie : ' num2str(dichotomic_value)]);
disp(['Nombre d iterations : ' num2str(nbIterDichotomie)]);
disp(['Temps moyen sur 100 executions : ' num2str(averageTimeDichotomie) 's']);
disp(['Erreur moyenne sur 100 executions : ' num2str(averageErrDichotomie) newline]);



% -------------------- Algorithme de trichotomie -------------------- %
[trichotomic_value, nbIterTrichotomie, errTrichotomie]= dichotomic2_func(0, 5, 10^-3, 100, trueValue);

total_time = 0;
total_error = 0;
for i = 1:100
    t_start = clock;
    [a , b , c] = dichotomic2_func(0, 5, 10^-6, 100, trueValue);
    t_end = clock;
    exec_time = etime(t_end, t_start);
    total_time = total_time + exec_time;
    total_error = total_error + c;
end
averageTimeTrichotomie = total_time/100;
averageErrTrichotomie = total_error/100;

disp(['Zero approche par trichotomie : ' num2str(trichotomic_value)]);
disp(['Nombre d iterations : ' num2str(nbIterTrichotomie)]);
disp(['Temps moyen sur 100 executions : ' num2str(averageTimeTrichotomie) 's']);
disp(['Erreur moyenne sur 100 executions : ' num2str(averageErrTrichotomie) newline]);
