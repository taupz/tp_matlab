function [ xfinal, nbIter , err ] = dichotomic2_func( f , a , b , tol , iterMax, trueValue)
    % Fonction de trichotomie qui execute l'algorithme de trichotomie sur
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

    % Boucle de la trichotomie
    while nbIter < iterMax && abs(b-a) >= tol
        nbIter = nbIter + 1;
        c1 = a + (b - a)/3;
        c2 = a + (b - a)*2/3;
        f_c1 = f(c1);
        f_c2 = f(c2);

        if f_c1 == 0
            xfinal = c1;
            err = 0;
            return
        elseif f_c2 == 0
            xfinal = c2;
            err = 0;
            return
        end

        if f(a)*f_c1 <= 0
            b = c1;
        elseif f_c1*f_c2 <= 0
            a = c1;
            b = c2;
        else
            a = c2;
        end
    end

    % Approximation de notre racine
    xfinal = (a+b)/2;
    err = abs(trueValue - xfinal);
end
