function [ xfinal ] = dichotomic2_func( a , b , tol , iterMax)
    % Fonction de trichotomie qui execute l'algorithme de trichotomie sur
    % l'intervalle [a,b] pour trouver la racine presente dans cet intervalle
    %
    % * Entree :
    % => a = Int = Borne inferieur de l'intervalle
    % => b = Int = Borne superieure de l'intervalle
    % => tol = Float = Critere d'arret
    % => iterMax = Int = Maximum d'iterations de notre algorithme
    %
    % * Sortie
    % => xfinal = Float = L'approximation de notre racine

    % Initialisation
    i = 0;

    % Boucle de la trichotomie
    while i <= iterMax && (b-a)/3 >= tol
        i = i + 1;
        c1 = a + (b - a)/3;
        c2 = a + (b - a)*2/3;
        f_c1 = func(c1);
        f_c2 = func(c2);

        if func(a)*f_c1 <= 0
            b = c1;
        elseif f_c1*f_c2 <= 0
            a = c1;
            b = c2;
        else
            a = c2;
        end
    end

    % Identification du critere d'arret implique
    if (b-a)/3 < tol
        disp('tol atteinte');
    elseif i > iterMax
        disp('iterMax atteinte');
    elseif c1 == 0 | c2 == 0
        disp('valeur exacte atteinte');
        return
    end

    % Approximation de notre racine
    xfinal = (a+b)/2;
end
