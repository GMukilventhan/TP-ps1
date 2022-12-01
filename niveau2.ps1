<#
    Consigne Niveau 2
    ajoutez un nombre d'essai
#>

$chiffreADeviner = Get-Random -Minimum 10 -Maximum 100
$chiffreADeviner
$essaie = 0
do {
    # Demande à l'utilisateur de saisir une valeur
    $chiffreADeviner1 = Read-Host 'Saisir une valeur'
    # Si la valeur saisie est égale au chiffre à deviner alors on sort de la boucle
    if ($chiffreADeviner -eq $chiffreADeviner1){
        Write-Host "le chiffre deviner est bon"
    }
    # Si la valeur saisie est plus grand que le chiffre à deviner alors on affiche un message et on continue dans la boucle
    elseif ($chiffreADeviner -gt $chiffreADeviner1){
        write-host "le chiffre deviner est plus grand"
    }
    # Si la valeur saisie est plus petit que le chiffre à deviner alors on affiche un message et on continue dans la boucle
    else {
        write-host "le chiffre deviner est plus petit"
    }
    # On continue dans la boucle tant que la valeur saisie n'est pas égale au chiffre à deviner
    $essaie++
} while ($chiffreADeviner -ne $chiffreADeviner1)
Write-Host "le nombre de tentatives est de $essaie"

