% Execution des algorithmes de recherche de zero

% Affichage de la valeur reelle de la racine du polynome p
p = [1 4 0 -10];
true_value = roots(p);
real_value = real(true_value(find(imag(true_value) == 0)));
disp(['zero reel de la fonction : ' num2str(real_value) newline]);

% Algorithme de dichotomie
tic
dichotomic_value = dichotomic_func(-500, 500, 10^-6, 1000);
dichotomic_time = toc;
disp(['Zero approche en ' num2str(dichotomic_time) 's par dichotomie :' num2str(dichotomic_value) newline]);

% Algorithme de trichotomie
tic
trichotomic_value = dichotomic2_func(-500, 500, 10^-6, 1000);
trichotomic_time = toc;
disp(['Zero approche en ' num2str(trichotomic_time) 's par trichotomie :' num2str(dichotomic_value) newline]);
