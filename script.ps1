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
Write-Host "le chiffre à deviner est $chiffreADeviner"
$chiffreADeviner1 = Read-Host 'Saisir une valeur'
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
# Boucle demandant à l'utilisateur de saisir un chiffre
$chiffreADeviner = Get-Random -Minimum 10 -Maximum 100
Write-Host "le chiffre à deviner est $chiffreADeviner"
do {
    $chiffreADeviner1 = Read-Host 'Saisir une valeur'
    if ($chiffreADeviner -eq $chiffreADeviner1){
        Write-Host "Vous avez trouvé le bon chiffre"
    } elseif ($chiffreADeviner -gt $chiffreADeviner1){
        Write-Host "Vous n'avez pas trouvé le bon chiffre, le chiffre à deviner est plus grand que $chiffreADeviner1"
    } else {
        Write-Host "Vous n'avez pas trouvé le bon chiffre, le chiffre à deviner est plus petit que $chiffreADeviner1"
    }
} while ($chiffreADeviner -ne $chiffreADeviner1)

