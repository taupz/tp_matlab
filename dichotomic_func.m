function [ xfinal, nbIter , err ] = dichotomic_func( fun , a , b , tol , iterMax, trueValue)
    % Fonction de dichotomie qui execute l'algorithme de dichotomie sur
    % l'intervalle [a,b] pour trouver la racine presente dans cet intervalle
    %
    % * Entree :
    % => fun = handle = Pointeur de la fonction a traiter
    % => a = Int = Borne inferieur de l'intervalle
    % => b = Int = Borne superieure de l'intervalle
    % => tol = Float = Critere d'arret
    % => iterMax = Int = Maximum d'iterations de notre algorithme
    % => trueVale = veritable valeur de la racine
    %
    % * Sortie :
    % => xfinal = Float = L'approximation de notre racine
    % => nbIter = Int = Nombre d'iterations necessaire pour trouver la bonne valeur approchee
    % => err = [Float] = Valeur de l'erreur entre l'element calculee et la veritable valeur

    % Initialisation
    nbIter = 0;

    % Boucle de la dichotomie
    while nbIter < iterMax && abs(b-a) > tol
        nbIter = nbIter + 1;
        c = (a + b)/2;

        f_c = fun(c);

        if f_c == 0
            break
        end

        if fun(a)*f_c < 0
            b = c;
        else
            a = c;
        end
    end

    % Approximation de notre racine
    xfinal = c;
    err = abs(trueValue - xfinal);
end
