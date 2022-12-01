<#
    Niveau 3 : demandez à l'utilisateur de choisir un niveau de difficulté, allant de facile à difficile
    Facile : minimum = 0, maximum = 20, 20 essais
    Moyen : minimum = 0, maximum = 20, 15 essais
    Difficile : minimim = 0, maximum = 30, 10 essais
#>
# Demande à l'utilisateur de choisir un niveau de difficulté
$difficulte = Read-Host 'Choisir un niveau de difficulté (facile, moyen, difficile)'
# Si la difficulté est facile alors on définit le minimum et le maximum
if ($difficulte -eq "facile"){
    $minimum = 0
    $Maximum = 20
    $essaie = 20
}
# Si la difficulté est moyen alors on définit le minimum et le maximum
else{
    if ($difficulte -eq "moyen"){
        $minimum = 0
        $Maximum = 20
        $essaie = 15
    }
    # Si la difficulté est difficile alors on définit le minimum et le maximum
    else{
        if ($difficulte -eq "difficile"){
            $minimum = 0
            $Maximum = 30
            $essaie = 10
        }else{
            Write-Host "Choisir un niveau de difficulté (facile, moyen, difficile)"
        }
    }
}
# On génère un chiffre aléatoire entre le minimum et le maximum
$chiffreADeviner = Get-Random -Minimum $minimum -Maximum $Maximum
# On affiche le chiffre à deviner
$chiffreADeviner
# On rentre dans la boucle 
do {
    # Demande à l'utilisateur de saisir une valeur
    $valeurasaisir = Read-Host 'Entrez le valeur à deviner'
    # Si la valeur saisie est égale au chiffre à deviner alors on sort de la boucle
    if ($chiffreADeviner -eq $valeurasaisir){
        Write-Host "Vous avez trouvé le bon chiffre"
    }
    # Si la valeur saisie est plus grand que le chiffre à deviner alors on affiche un message et on continue dans la boucle
    elseif ($chiffreADeviner -gt $valeurasaisir){
        write-host "Vous n'avez pas trouvé le bon chiffre, le chiffre à deviner est plus grand que $valeurasaisir"
    }
    # Si la valeur saisie est plus petite que le chiffre à deviner alors on affiche un message et on continue dans la boucle
    else{
        write-host "Vous n'avez pas trouvé le bon chiffre, le chiffre à deviner est plus petit que $valeurasaisir"
    }
    # On diminue le nombre d'essaie
    $essaie--
} 
# On continue dans la boucle tant que la valeur saisie n'est pas égale au chiffre à deviner et que le nombre d'essaie est supérieur à 0
while ($chiffreADeviner -ne $valeurasaisir -and $essaie -gt 0)
# L'utilisateur a perdu
if ($essaie -eq 0){
    Write-Host "Vous avez perdu mais le chiffre à deviner était $chiffreADeviner"
}
# on affiche le nombre d'essaie restant
else{
    Write-Host "Il vous reste $essaie tentative"
}



