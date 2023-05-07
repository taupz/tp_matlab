% Execution des algorithmes de recherche de zero

% Affichage de la valeur reelle de la racine du polynome p
p = [1 4 0 -10];
true_value = roots(p);
real_value = real(true_value(find(imag(true_value) == 0)));
disp(['zero reel de la fonction : ' num2str(real_value)]);

% Algorithme de dichotomie
dichotomic_value = dichotomic_func(-1, 5, 10^-4, 1000);
disp(['Zero approche par dichotomie :' num2str(dichotomic_value)])
