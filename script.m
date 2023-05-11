% Execution des algorithmes de recherche de zero

% -------------------- Racine reelle du polynome -------------------- %
p = [1 4 0 -10];
trueValue = roots(p);
trueValue = real(trueValue(find(imag(trueValue) == 0)));
disp(['zero reel de la fonction : ' num2str(trueValue) newline]);



% -------------------- Algorithme de dichotomie -------------------- %
[dichotomic_value, nbIterDichotomie, errDichotomie] = dichotomic_func(0, 5, 10^-3, 100, trueValue);

total_time = 0;
for i = 1:100
    t_start = clock;
    dichotomic_func(0, 5, 10^-3, 100, trueValue);
    t_end = clock;
    exec_time = etime(t_end, t_start);
    total_time = total_time + exec_time;
end
averageTimeDichotomie = total_time/100;


disp(['Zero approche par dichotomie : ' num2str(dichotomic_value)]);
disp(['Erreur  : ' num2str(errDichotomie)]);
disp(['Nombre d iterations : ' num2str(nbIterDichotomie)]);
disp(['Temps moyen sur 100 executions : ' num2str(averageTimeDichotomie) 's' newline]);



% -------------------- Algorithme de trichotomie -------------------- %
[trichotomic_value, nbIterTrichotomie, errTrichotomie]= dichotomic2_func(0, 5, 10^-3, 100, trueValue);

total_time = 0;
for i = 1:100
    t_start = clock;
    dichotomic2_func(0, 5, 10^-3, 100, trueValue);
    t_end = clock;
    exec_time = etime(t_end, t_start);
    total_time = total_time + exec_time;
end
averageTimeTrichotomie = total_time/100;

disp(['Zero approche par trichotomie : ' num2str(trichotomic_value)]);
disp(['Erreur : ' num2str(errTrichotomie)]);
disp(['Nombre d iterations : ' num2str(nbIterTrichotomie)]);
disp(['Temps moyen sur 100 executions : ' num2str(averageTimeTrichotomie) 's' newline]);
