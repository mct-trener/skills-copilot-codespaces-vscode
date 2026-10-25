# skills-copilot-codespaces-vscode

## Szablon zaawansowanej funkcji PowerShell

```powershell
function Invoke-Example {
	[CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'Medium')]
	param(
		[Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
		[ValidateNotNullOrEmpty()]
		[string[]] $Name,

		[Parameter()]
		[ValidateRange(1, 100)]
		[int] $Count = 1
	)

	begin {
		# Inicjalizacja przed przetwarzaniem danych.
	}

	process {
		foreach ($item in $Name) {
			if ($PSCmdlet.ShouldProcess($item, 'Wykonaj operację')) {
				for ($i = 1; $i -le $Count; $i++) {
					# Zastąp przykładową logikę własną.
					[pscustomobject]@{
						Name  = $item
						Index = $i
					}
				}
			}
		}
	}

	end {
		# Sprzątanie po przetwarzaniu danych.
	}
}
```

Przykład użycia: `Invoke-Example -Name 'Ada' -Count 2 -WhatIf`


# funkcja powershell dodająca 2 liczby podaje jako wartości do parametrów A i B
