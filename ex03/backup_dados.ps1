$ficheiro = $args[0]

if ($ficheiro -eq $null -or $ficheiro -eq "") {
    Write-Host "Uso correto: .\backup_dados.ps1 <nome_do_ficheiro>"
    exit
}

if (-not (Test-Path $ficheiro)) {
    Write-Host "Erro: O ficheiro $ficheiro nao foi encontrado."
} else {
    Copy-Item $ficheiro "$ficheiro.bak"
    Write-Host "Backup de $ficheiro criado com sucesso!"
}