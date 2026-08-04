$script:ElegantKidPalette = @{
    Teal      = '#3F9AAE'
    Turquoise = '#79C9C5'
    Cream     = '#FFE2AF'
    Coral     = '#F96E5B'
    DarkBg    = '#1A1F2E'
}

function New-ElegantKidColorSequence {
    param(
        [Parameter(Mandatory)]
        [string]$Hex,

        [switch]$Background
    )

    $cleanHex = $Hex.TrimStart('#')
    $red = [Convert]::ToInt32($cleanHex.Substring(0, 2), 16)
    $green = [Convert]::ToInt32($cleanHex.Substring(2, 2), 16)
    $blue = [Convert]::ToInt32($cleanHex.Substring(4, 2), 16)

    if ($Background) {
        return $PSStyle.Background.FromRgb($red, $green, $blue)
    }

    return $PSStyle.Foreground.FromRgb($red, $green, $blue)
}

function Set-ElegantKidPowerShellTheme {
    if (-not (Get-Module -Name PSReadLine)) {
        Import-Module -Name PSReadLine
    }

    $supportsRgb = $PSVersionTable.PSVersion.Major -ge 7 -and $null -ne (Get-Variable -Name PSStyle -ErrorAction SilentlyContinue)

    if ($supportsRgb) {
        $teal = New-ElegantKidColorSequence -Hex $script:ElegantKidPalette.Teal
        $turquoise = New-ElegantKidColorSequence -Hex $script:ElegantKidPalette.Turquoise
        $cream = New-ElegantKidColorSequence -Hex $script:ElegantKidPalette.Cream
        $coral = New-ElegantKidColorSequence -Hex $script:ElegantKidPalette.Coral
        $darkForeground = New-ElegantKidColorSequence -Hex $script:ElegantKidPalette.DarkBg
        $darkBackground = New-ElegantKidColorSequence -Hex $script:ElegantKidPalette.DarkBg -Background
        $tealBackground = New-ElegantKidColorSequence -Hex $script:ElegantKidPalette.Teal -Background

        Set-PSReadLineOption -Colors @{
            Command            = $teal
            Comment            = $turquoise
            ContinuationPrompt = $turquoise
            Default            = $cream
            Emphasis           = $coral
            Error              = $coral
            InlinePrediction   = $turquoise
            Keyword            = $coral
            Member             = $teal
            Number             = $coral
            Operator           = $cream
            Parameter          = $turquoise
            Selection          = $darkForeground + $tealBackground
            String             = $cream
            Type               = $teal
            Variable           = $turquoise
        }

        $PSStyle.Formatting.ErrorAccent = $coral
        $PSStyle.Formatting.FormatAccent = $teal
        $PSStyle.Formatting.TableHeader = $turquoise
        $PSStyle.FileInfo.Directory = $teal
        $PSStyle.FileInfo.Executable = $turquoise
        $PSStyle.FileInfo.SymbolicLink = $cream
        $PSStyle.Progress.Style = $cream + $darkBackground

        return
    }

    Set-PSReadLineOption -Colors @{
        Command            = 'Cyan'
        Comment            = 'DarkCyan'
        ContinuationPrompt = 'DarkCyan'
        Default            = 'Gray'
        Emphasis           = 'Red'
        Error              = 'Red'
        InlinePrediction   = 'DarkCyan'
        Keyword            = 'Red'
        Member             = 'Cyan'
        Number             = 'DarkYellow'
        Operator           = 'Gray'
        Parameter          = 'DarkCyan'
        String             = 'Yellow'
        Type               = 'Cyan'
        Variable           = 'DarkCyan'
    }
}

Set-ElegantKidPowerShellTheme
