function [ y ] = func( x )
    % Evalue le polyome p pour la valeurs d'entree donnee
    %
    % * Entree :
    % => x = int = scalaire pour lequel evaluer le polynome
    %
    % * Sortie :
    % => y = int = valeur du polynome evalue à x

    p = [1 4 0 -10];
    y = polyval(p, x);
end
