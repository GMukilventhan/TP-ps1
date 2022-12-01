<#
    Consigne Niveau 2
    ajoutez un nombre d'essai
#>

$chiffreADeviner = Get-Random -Minimum 10 -Maximum 100
$chiffreADeviner
$essaie = 0
do {
    # Demande à l'utilisateur de saisir une valeur
    $valeurasaisir = Read-Host 'Saisir une valeur'
    # Si la valeur saisie est égale au chiffre à deviner alors on sort de la boucle
    if ($chiffreADeviner -eq $valeurasaisir){
        Write-Host "Vous avez trouvé le bon chiffre"
    }
    # Si la valeur saisie est plus grand que le chiffre à deviner alors on affiche un message et on continue dans la boucle
    elseif ($chiffreADeviner -gt $valeurasaisir){
        write-host "Vous n'avez pas trouvé le bon chiffre, le chiffre à deviner est plus grand que $valeurasaisir"
    }
    # Si la valeur saisie est plus petit que le chiffre à deviner alors on affiche un message et on continue dans la boucle
    else {
        write-host "Vous n'avez pas trouvé le bon chiffre, le chiffre à deviner est plus petit que $valeurasaisir"
    }
    # On continue dans la boucle tant que la valeur saisie n'est pas égale au chiffre à deviner
    $essaie++
} while ($chiffreADeviner -ne $valeurasaisir)
Write-Host "le nombre de tentatives est de $essaie"

