# Verwijder oude resultaten (optioneel maar handig)
Remove-Item results\* -Recurse -Force -ErrorAction Ignore

# Run alle Robot Framework tests en zet output in results/
robot -d results tests/