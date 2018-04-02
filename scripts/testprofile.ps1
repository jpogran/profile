function U
{
    param
    (
        [int] $Code
    )
 
    if ((0 -le $Code) -and ($Code -le 0xFFFF))
    {
        return [char] $Code
    }
 
    if ((0x10000 -le $Code) -and ($Code -le 0x10FFFF))
    {
        return [char]::ConvertFromUtf32($Code)
    }
 
    throw "Invalid character code $Code"
}

Write-Host "$(U 0xE0B0) $(U 0x00B1) $(U 0xE0A0) $(U 0x27A6) $(U 0x2718) $(U 0x26A1) $(U 0x2699)"
