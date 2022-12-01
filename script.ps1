<#
    Consigne Niveau 1
    #Demandez à l'utilisateur de saisir une valeur maximale et minimale et enregistrement dans deux variables ($minimum, $maximum)
#>
# Demande à l'utilisateur de saisir une valeur maximale et minimale
$minimum = Read-Host "Saisir une valeur minimale"
$maximum = Read-Host "Saisir une valeur maximale"
# Affiche les valeurs saisies
Write-Host "La valeur minimale est $minimum"
Write-Host "La valeur maximale est $maximum"

<#
    Consigne Niveau 1
    Générez d'une variable $chiffreADeviner, et générez un nombre aléatoire dans les bornes indiquées (astuce : utilisez la commande Get-Random)
#>
# Génération d'un nombre aléatoire entre $minimum et $maximum
$chiffreADeviner = Get-Random -Minimum 10 -Maximum 100
# Affiche le chiffre à deviner
Write-Host "le chiffre à deviner est $chiffreADeviner"
# Demande à l'utilisateur de saisir une valeur
$chiffreADeviner1 = Read-Host 'Saisir une valeur'
# Affiche un message 
if ($chiffreADeviner -eq $chiffreADeviner1){
    Write-Host "Vous avez trouvé le bon chiffre"
} else {
    Write-Host "Vous n'avez pas trouvé le bon chiffre, le chiffre à deviner était $chiffreADeviner"
}

<#
    Consigne Niveau 1
    Réalisez une boucle demandant à l'utilisateur de saisir un chiffre
    Si le chiffre est trop haut, indiquez-lui que le chiffre est plus petit
    Si le chiffre est trop petit, indiquez-lui que le chiffre est plus haut
    Si l'utilisateur a deviné le chiffre, indiquez-lui qu'il a trouvé le bon chiffre et sortez de la boucle
#>
# Boucle demandant à l'utilisateur de saisir un chiffre qui est compris entre le minimum et le maximum
$chiffreADeviner = Get-Random -Minimum 10 -Maximum 100
# Affiche le chiffre à deviner
Write-Host "le chiffre à deviner est $chiffreADeviner"
# Rentrer dans la boucle
do {
    # Demande à l'utilisateur de saisir une valeur
    $chiffreADeviner1 = Read-Host 'Saisir une valeur'
    # Si la valeur saisie est égale au chiffre à deviner alors on sort de la boucle
    if ($chiffreADeviner -eq $chiffreADeviner1){
        Write-Host "Vous avez trouvé le bon chiffre"
    # Si la valeur saisie est plus grand que le chiffre à deviner alors on affiche un message et on continue dans la boucle 
    } elseif ($chiffreADeviner -gt $chiffreADeviner1){
        Write-Host "Vous n'avez pas trouvé le bon chiffre, le chiffre à deviner est plus grand que $chiffreADeviner1"
        # Si la valeur saisie est plus petit que le chiffre à deviner alors on affiche un message et on continue dans la boucle
    } else {
        Write-Host "Vous n'avez pas trouvé le bon chiffre, le chiffre à deviner est plus petit que $chiffreADeviner1"
    }
    # On continue dans la boucle tant que la valeur saisie n'est pas égale au chiffre à deviner
} while ($chiffreADeviner -ne $chiffreADeviner1)

