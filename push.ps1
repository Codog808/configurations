git init
git add .

echo "give me a message to add to commit"
$a = Read-Host

git commit -m $a
