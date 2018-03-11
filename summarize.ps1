Function ConvertTo-Markdown {
    <#
    .Synopsis
       Converts a PowerShell object to a Markdown table.
    .EXAMPLE
       $data | ConvertTo-Markdown
    .EXAMPLE
       ConvertTo-Markdown($data)
    #>
    [CmdletBinding()]
    [OutputType([string])]
    Param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true
        )]
        [PSObject[]]$collection
    )

    Begin {
        $items = @()
        $columns = [ordered]@{}
    }

    Process {
        ForEach($item in $collection) {
            $items += $item

            $item.PSObject.Properties | %{
                if(-not $columns.Contains($_.Name) -or $columns[$_.Name] -lt $_.Value.ToString().Length) {
                    $columns[$_.Name] = $_.Value.ToString().Length
                }
            }
        }
    }

    End {
        ForEach($key in $($columns.Keys)) {
            $columns[$key] = [Math]::Max($columns[$key], $key.Length)
        }

        $header = @()
        ForEach($key in $columns.Keys) {
            $header += ('{0,-' + $columns[$key] + '}') -f $key
        }
        $header -join ' | '

        $separator = @()
        ForEach($key in $columns.Keys) {
            $separator += '-' * $columns[$key]
        }
        $separator -join ' | '

        ForEach($item in $items) {
            $values = @()
            ForEach($key in $columns.Keys) {
                $values += ('{0,-' + $columns[$key] + '}') -f $item.($key)
            }
            $values -join ' | '
        }
    }
}

#
$files = Get-ChildItem -Path .\*SortBench-report.csv
$files
$csvs = $files | ForEach-Object -Process { Import-Csv -Path $PSItem.FullName }
$groups = $csvs | Group-Object -Property Method,Filler,Length
#$groups
#$summaries = $groups | Select-Object -Unique -Property Name @{
#        Label = "Mean";
#        Expression = {
#            # Sum all the counts for each domain
#           ($PSItem.group | Measure-Object -Property Scaled -Mean).Mean
#        }
#    }
#$summaries = $groups | Select-Object -expandproperty Scaled
#$summaries
#$groups | ForEach-Object { $_.Name }
#$groups | ForEach-Object { ($_.Group | Measure-Object -Property Scaled -Min -Average -Max) }
#Group-Object -Property Method,Filler,Length | Select-Object -Unique -Property Name @{
#        Label = "Mean";
#        Expression = {
#            # Sum all the counts for each domain
#            ($PSItem.Group | Measure-Object -Property Scaled -Mean).Mean
#        }
#    }
$r = $groups | 
 Select-Object @{ Name='Method'   ;Expression={$_.Name.Split(',')[0] } },
               @{ Name='Filler'   ;Expression={$_.Name.Split(',')[1] } },
               @{ Name='Length'   ;Expression={$_.Name.Split(',')[2] } },
               @{ Name='Min';Expression={($_.Group|Measure-Object -Property Scaled -Min).Minimum} },
               @{ Name='Mean';Expression={($_.Group|Measure-Object -Property Scaled -Average).Average} },
               @{ Name='Max';Expression={($_.Group|Measure-Object -Property Scaled -Max).Maximum} }
#$r

#$r | Export-Csv -NoTypeInformation -Path ..\SortBench-summary-report.csv
$r | ConvertTo-Markdown | Out-File ..\SortBench-summary-report.md