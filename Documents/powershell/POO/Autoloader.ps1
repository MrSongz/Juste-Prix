. ".\Class\truc.ps1"

$classes = @(Get-ChildItem -Path .\Class)
$objets = @()

foreach($class in $classes)
{
    if($class -ne "truc.ps1")
    {
        . ".\Class\$($class.name)"
        $objets+=(New-Object -TypeName $class.BaseName)
        Add-Member -InputObject $objets[-1] -MemberType NoteProperty -Name Name -Value $class.BaseName

    }
}
