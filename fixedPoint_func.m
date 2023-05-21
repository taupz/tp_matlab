function [xfinal, nbIter, err] = fixedPoint_func(fun, p0, iterMax, tol, trueValue)
    % Fonction d'itération du point fixe (fixed point iteration)
    %
    % * Entrée :
    % => fun = handle = Pointeur de fonction à traiter
    % => p0 = Float = Initial approximation
    % => tol = Float = Critère d'arrêt
    % => iterMax = Int = Maximum d'itérations de notre algorithme
    % => trueValue = Float = Varitable valeur de la racine
    %
    % * Sortie :
    % => xfinal = Float = L'approximation de notre racine
    % => nbIter = Int = Nombre d'iterations necessaire pour trouver la bonne valeur approchee
    % => err = [Float] = Valeur de l'erreur entre l'element calculee et la veritable valeur

    % Initialisation des variables
    nbIter = 0;
    x = p0;
    err = zeros([1, iterMax]);

    while nbIter < iterMax
        % Calcul de l'itération suivante
        newX = fun(x);

        if abs(newX - x) < tol
            break
        end

        % Calcul de l'erreur à chaque itération
        err(nbIter+1) = abs(trueValue - newX);

        nbIter = nbIter + 1;
        x = newX;
    end

    % Approximation de notre racine
    xfinal = newX;
end
