. ".\Autoloader.ps1"
[console]::BackgroundColor = "black"
<#


            Développé pas Antoine Baras


#>
$welcome ="    /88888                       /88                     /8888888           /88                 /88 `n"
$welcome +="   |__  88                      | 88                    | 88__  88         |__/                | 88 `n"
$welcome +="      | 88 /88   /88  /888888$ /888888    /888888       | 88  \ 88 /888888  /88 /88   /88      | 88 `n"
$welcome +="      | 88| 88  | 88 /88_____/|_  88_/   /88__  88      | 8888888//88__  88| 88|  88 /88/      | 88 `n"
$welcome +=" /88  | 88| 88  | 88|  888888   | 88    | 88888888      | 88____/| 88  \__/| 88 \  8888/       |__/ `n"
$welcome +="| 88  | 88| 88  | 88 \____  88  | 88 /88| 88_____/      | 88     | 88      | 88  >88  88            `n"
$welcome +="|  888888/|  888888/ /8888888/  |  8888/|  8888888      | 88     | 88      | 88 /88/\  88       /88 `n"
$welcome +=" \______/  \______/ |_______/    \___/   \_______/      |__/     |__/      |__/|__/  \__/      |__/ `n"

$cPlus ="  /888888  /88                    /88           /8888888  /88                           /88`n"
$cPlus +=" /88__  88| 8/                   | 88          | 88__  88| 88                          | 88`n"
$cPlus +="| 88  \__/|_//888888   /8888888 /888888        | 88  \ 88| 88 /88   /88  /888888$      | 88`n"
$cPlus +="| 88        /88__  88 /88_____/|_  88_/        | 888888$/| 88| 88  | 88 /88_____/      | 88`n"
$cPlus +="| 88       | 88888888|  888888   | 88          | 88____/ | 88| 88  | 88|  888888       |__/`n"
$cPlus +="| 88    88 | 88_____/ \____  88  | 88 /88      | 88      | 88| 88  | 88 \____  88          `n"
$cPlus +="|  888888/ |  8888888 /8888888/  |  8888/      | 88      | 88|  888888/ /8888888/       /88`n"
$cPlus +=" \______/   \_______/|_______/    \___/        |__/      |__/ \______/ |_______/       |__/`n"

$cMoins ="  /888888  /88                    /88           /88      /88           /88                           /88`n"
$cMoins +=" /88__  88| 8/                   | 88          | 88$    /888          |__/                          | 88`n"
$cMoins +="| 88  \__/|_//888888   /8888888 /888888        | 8888  /8888  /888888  /88 /8888888   /8888888      | 88`n"
$cMoins +="| 88        /88__  88 /88_____/|_  88_/        | 88 88/88 88 /88__  88| 88| 88__  88 /88_____/      | 88`n"
$cMoins +="| 88       | 88888888|  888888   | 88          | 88  888| 88| 88  \ 88| 88| 88  \ 88|  888888       |__/`n"
$cMoins +="| 88    88 | 88_____/ \____  88  | 88 /88      | 88\  8 | 88| 88  | 88| 88| 88  | 88 \____  88          `n"
$cMoins +="|  888888/ |  8888888 /8888888/  |  8888/      | 88 \/  | 88|  888888/| 88| 88  | 88 /8888888/       /88`n"
$cMoins +=" \______/   \_______/|_______/    \___/        |__/     |__/ \______/ |__/|__/  |__/|_______/       |__/`n"

$victoire =" /88    /88 /88             /88               /88                           /88 `n"
$victoire +="| 88   | 88|__/            | 88              |__/                          | 88 `n"
$victoire +="| 88   | 88 /88  /888888$ /888888    /888888  /88  /888888   /888888       | 88 `n"
$victoire +="|  88 / 88/| 88 /88_____/|_  88_/   /88__  88| 88 /88__  88 /88__  88      | 88 `n"
$victoire +=" \  88 88/ | 88| 88        | 88    | 88  \ 88| 88| 88  \__/| 88888888      |__/ `n"
$victoire +="  \  88$/  | 88| 88        | 88 /88| 88  | 88| 88| 88      | 88_____/           `n"
$victoire +="   \  8/   | 88|  8888888  |  8888/|  888888/| 88| 88      |  8888888       /88 `n"
$victoire +="    \_/    |__/ \_______/   \___/   \______/ |__/|__/       \_______/      |__/ `n"

$perdu = " /8888888                           /88                 /88 `n"
$perdu += " | 88__  88                         | 88                | 88 `n"
$perdu += " | 88  \ 88 /888888   /888888   /888888$ /88   /88      | 88 `n"
$perdu += " | 8888888//88__  88 /88__  88 /88__  88| 88  | 88      | 88 `n"
$perdu += " | 88____/| 88888888| 88  \__/| 88  | 88| 88  | 88      |__/ `n"
$perdu += " | 88     | 88_____/| 88      | 88  | 88| 88  | 88           `n"
$perdu += " | 88     |  888888$| 88      |  8888888|  888888/       /88 `n"
$perdu += " |__/      \_______/|__/       \_______/ \______/       |__/ `n"


While(1)
{
    cls
    $number = Get-Random -Maximum $classes.Length -Minimum 0
    write-host -foreground yellow $welcome
    $objetChoisi = $objets[$number].Name
    $price = $objets[$number].definePrice()
    [int]$vies = 10
    $trouve = $false
    Write-Host "Devine le prix de : $objetChoisi"
    while(!$trouve -and ($vies -gt 0))
    {
        
        write-host -foreground Blue $objets[$number].display()
        [int]$proposition = Read-Host ("`n`nTa proposition")
        write-host $proposition
        cls

        if($proposition -gt $price)
        {
            $vies--
            write-host -ForegroundColor Red $cMoins
            write-host "Ta proposition : $proposition"
            write-host "`n`nEncore $vies Chances !"
        }

        elseif($proposition -lt $price)
        {
            $vies--
            Write-Host -ForegroundColor Green $cPlus
            write-host "Ta proposition : $proposition"
            write-host "`n`nEncore $vies Chances !"
   
        }

        elseif($proposition -eq $price)
        {
            $trouve = $true
        }

    }

    if($trouve)
    {
        cls
        write-host -foreground green $victoire
        Write-Host "`nFélicitations !`nLa réponse était $price`nTu as le droit de rejouer !"
    }

    else
    {
        cls
        write-host -foreground red $perdu
        Write-Host "`nDommage...`nLa réponse était : $price`nC'est pas grave, tu peux rejouer quand même ! :)"
    }

    Read-host("`n`nAppuyer sur une touche pour continuer...")
}
