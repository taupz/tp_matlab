% Execution des algorithmes de recherche de zero
% -------------------- Variables globales -------------------- %

fun = @(x) x^3 + 4*x^2 - 10;



% -------------------- Racine reelle du polynome -------------------- %
p = [1 4 0 -10];
trueValue = roots(p);
trueValue = real(trueValue(find(imag(trueValue) == 0)));
disp(['zero reel de la fonction : ' num2str(trueValue) char(10)]);



% -------------------- Algorithme de dichotomie -------------------- %
[dichotomic_value, nbIterDichotomie, errDichotomie] = dichotomic_func(fun , 0, 5, 10^-3, 100, trueValue);

total_time = 0;
for i = 1:100
    t_start = clock;
    dichotomic_func(fun, 0, 5, 10^-3, 100, trueValue);
    t_end = clock;
    exec_time = etime(t_end, t_start);
    total_time = total_time + exec_time;
end
averageTimeDichotomie = total_time/100;

disp(['Zero approche par dichotomie : ' num2str(dichotomic_value)]);
disp(['Erreur  : ' num2str(errDichotomie)]);
disp(['Nombre d iterations : ' num2str(nbIterDichotomie)]);
disp(['Temps moyen sur 100 executions : ' num2str(averageTimeDichotomie) 's' char(10)]);



% -------------------- Algorithme de trichotomie -------------------- %
[trichotomic_value, nbIterTrichotomie, errTrichotomie]= dichotomic2_func(fun, 0, 5, 10^-3, 100, trueValue);

total_time = 0;
for i = 1:100
    t_start = clock;
    dichotomic2_func(fun, 0, 5, 10^-3, 100, trueValue);
    t_end = clock;
    exec_time = etime(t_end, t_start);
    total_time = total_time + exec_time;
end
averageTimeTrichotomie = total_time/100;

disp(['Zero approche par trichotomie : ' num2str(trichotomic_value)]);
disp(['Erreur : ' num2str(errTrichotomie)]);
disp(['Nombre d iterations : ' num2str(nbIterTrichotomie)]);
disp(['Temps moyen sur 100 executions : ' num2str(averageTimeTrichotomie) 's' char(10)]);



% -------------------- Methode du point fixe -------------------- %
trueValue1 = trueValue;
f1 = @(x) x^4 + 2*x^2 - x - 3;
g1 = @(x) (3 + x - 2*x^2)^(1/4);

f1 = @(x) x^3 + 4*x^2 - 10;
g1 = @(x) (-4*x^2  + 10)^(1/3);

[fixedPointValue, nbIterFixedPoint, errFixedPoint] = fixedPoint_func(g1, 1, 100, 10^-3, trueValue1);

total_time = 0;
for i = 1:100
    t_start = clock;
    fixedPoint_func(g1, 1, 100, 10^-3, trueValue1);
    t_end = clock;
    exec_time = etime(t_end, t_start);
    total_time = total_time + exec_time;
end
averageTimeFixedPoint = total_time/100;

disp(['Zero approche par la methode du point fixe : ' num2str(fixedPointValue)]);
disp(['Erreur : ' num2str(errFixedPoint)]);
disp(['Nombre d iterations : ' num2str(nbIterFixedPoint)]);
disp(['Temps moyen sur 100 executions : ' num2str(averageTimeFixedPoint) 's' char(10)]);




% -------------------- Methode de Newton -------------------- %
deriv = @(x) 3*x^2 + 8*x;

[newtonValue, nbIterNewton, errNewton] = newton_func(fun , deriv , 5, 100 , 10^-3 , trueValue);

total_time = 0;
for i = 1:100
    t_start = clock;
    newton_func(fun, deriv, 5, 100, 10^-3, trueValue);
    t_end = clock;
    exec_time = etime(t_end, t_start);
    total_time = total_time + exec_time;
end
averageTimeNewton = total_time/100;

disp(['Zero approche par la méthode de Newton : ' num2str(newtonValue)]);
disp(['Erreur : ' num2str(errNewton)]);
disp(['Nombre d iterations : ' num2str(nbIterNewton)]);
disp(['Temps moyen sur 100 executions : ' num2str(averageTimeNewton) 's' char(10)]);



% -------------------- Methode de la sécante -------------------- %

[secanteValue, nbIterSecante, errSecante] = secante_func(fun , 0 , 5, 100 , 10^-3 , trueValue);

total_time = 0;
for i = 1:100
    t_start = clock;
    secante_func(fun, 0, 5, 100, 10^-3, trueValue);
    t_end = clock;
    exec_time = etime(t_end, t_start);
    total_time = total_time + exec_time;
end
averageTimeSecante = total_time/100;

disp(['Zero approche par la méthode de la secante : ' num2str(secanteValue)]);
disp(['Erreur : ' num2str(errSecante)]);
disp(['Nombre d iterations : ' num2str(nbIterSecante)]);
disp(['Temps moyen sur 100 executions : ' num2str(averageTimeSecante) 's' char(10)]);



% -------------------- Methode de la fausse position -------------------- %

[falsePosValue, nbIterFalsePos, errFalsePos] = falsePos_func(fun , 0 , 5, 100 , 10^-3 , trueValue);

total_time = 0;
for i = 1:100
    t_start = clock;
    secante_func(fun, 0, 5, 100, 10^-3, trueValue);
    t_end = clock;
    exec_time = etime(t_end, t_start);
    total_time = total_time + exec_time;
end
averageTimeFalsePos = total_time/100;

disp(['Zero approche par la méthode de la fausse position : ' num2str(falsePosValue)]);
disp(['Erreur : ' num2str(errFalsePos)]);
disp(['Nombre d iterations : ' num2str(nbIterFalsePos)]);
disp(['Temps moyen sur 100 executions : ' num2str(averageTimeFalsePos) 's' char(10)]);


