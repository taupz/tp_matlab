function [ xfinal, nbIter , err ] = dichotomic_func( a , b , tol , iterMax, trueValue)
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
    nbIter = 0;

    % Boucle de la dichotomie
    while nbIter <= iterMax && (b-a)/2 >= tol
        nbIter = nbIter + 1;
        c = (a + b)/2;

        if func(a)*func(c) <= 0
            b = c;
        else
            a = c;
        end
    end

    % Approximation de notre racine
    xfinal = c;
    err = abs(trueValue - xfinal);
end
