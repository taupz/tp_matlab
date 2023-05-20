function[xfinal,nbIter,err]=newton_func(fun, deriv, p0, iterMax, tol, trueValue)
    % Fonction de Newton
    %
    % * Entree :
    % => fun = handle = Pointeur de fonction a traiter
    % => deriv = handle = Pointeur sur la derivee de fonction a traiter
    % => p0 = Float = premiere approximation
    % => tol = Float = critere d'arret
    % => iterMax = Int = Maximum d'iterations de notre algorithme
    % => trueValue = Float = veritable valeur de la racine
    %
    % * Sortie :
    % => xfinal = Float = L'approximation de notre racine
    % => nbIter = Int = Nombre d'iterations necessaire pour trouver la bonne valeur approchee
    % => err = [Float] = Valeur de l'erreur entre l'element calculee et la veritable valeur
    nbIter = 0;
    x = p0;
    while nbIter < iterMax && abs(fun(x)) >= tol
        nbIter = nbIter + 1;
        x = x - fun(x)/deriv(x);
    end
    xfinal = x;
    err = abs(trueValue - xfinal);
end
