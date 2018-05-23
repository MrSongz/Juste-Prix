class truc 
{

    [int] $price

    [int] definePrice()
    {
        $this.price = Get-Random -Maximum 101 -Minimum 1
        return $this.price
    }
}