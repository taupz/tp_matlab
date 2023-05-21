function[xfinal,nbIter,err]=secante_func(fun, a, b, iterMax, tol, trueValue)
    % Fonction de la secante
    %
    % * Entree :
    % => fun = handle = Pointeur de fonction a traiter
    % => a = Int = Borne inferieur de l'intervalle de recherche
    % => b = Int = Borne superieure de l'intervalle de recherche
    % => iterMax = Int = Maximum d'iterations de notre algorithme
    % => tol = Float = critere d'arret
    % => trueValue = Float = veritable valeur de la racine
    %
    % * Sortie :
    % => xfinal = Float = L'approximation de notre racine
    % => nbIter = Int = Nombre d'iterations necessaire pour trouver la bonne valeur approchee
    % => err = [Float] = Valeur de l'erreur entre l'element calculee et la veritable valeur
    nbIter = 0;
    x0 = a;
    x1 = b;

    while nbIter < iterMax && abs(x1-x0) > tol
        nbIter = nbIter + 1;
        x2 = x1 - fun(x1)*(x1 - x0)/(fun(x1) - fun(x0));

        x0 = x1;
        x1 = x2;
    end

    xfinal = x2;
    err = abs(xfinal - trueValue);
end
