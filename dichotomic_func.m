function [ xfinal ] = dichotomic_func( a , b , tol , iterMax)
    % Fonction de dichotomie qui execute l'algorithme de dichotomie sur
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

    % Boucle de la dichotomie
    while i <= iterMax && (b-a)/2 >= tol
        i = i + 1;
        c = (a + b)/2;

        if func(a)*func(c) <= 0
            b = c;
        else
            a = c;
        end
    end

    % Identification du critere d'arret implique
    % Identification du critere d'arret implique
    if (b-a)/2 < tol
        disp('tol atteinte');
    elseif i > iterMax
        disp('iterMax atteinte');
    end

    % Approximation de notre racine
    xfinal = c;
end
