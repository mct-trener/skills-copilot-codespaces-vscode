# funkcja powershell dodająca 2 liczby podaje jako wartości do parametrów A i B
function Add-Numbers {
    param(
        [Parameter(Mandatory=$true)]
        [int]$A,
        [Parameter(Mandatory=$true)]
        [int]$B
    )
    return $A + $B
}