# Run quarto render
quarto render

# Check if the quarto render command was successful
if ($LASTEXITCODE -eq 0) {
    Write-Host "Quarto render completed successfully."

    # Run myst start
    myst start

    # Check if the myst start command was successful
    if ($LASTEXITCODE -eq 0) {
        Write-Host "myst start completed successfully."
    } else {
        Write-Host "myst start failed with exit code $LASTEXITCODE."
    }
} else {
    Write-Host "Quarto render failed with exit code $LASTEXITCODE."
}
