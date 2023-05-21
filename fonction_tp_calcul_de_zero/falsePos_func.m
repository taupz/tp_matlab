function[xfinal,nbIter,err]=falsePos_func(fun, a, b, iterMax, tol, trueValue)
    % Fonction de la fausse position
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

    % Initialisation des variables
    nbIter = 0;
    x0 = a;
    x1 = b;
    err = zeros([1, iterMax]);

    while nbIter < iterMax
        nbIter = nbIter + 1;

        % Calcul de l'itération suivante
        x2 = (x0*fun(x1) - x1*fun(x0))/(fun(x1) - fun(x0));

        if abs(fun(x2)) < tol
            break;
        end

        % Calcul de l'erreur à chaque itération
        err(nbIter+1) = abs(trueValue - x2);

        if fun(x0) * fun(x2) < 0
            x1 = x2;
        else
            x0 = x2;
        end
    end

    % Approximation de notre racine
    xfinal = x2;
end
