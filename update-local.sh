echo "Updating the repo"

git reset --hard
git clean -fxd
git pull

echo "Updating the hugo theme"

cd ./themes/hugo-academic-group

 git pull

echo "Done."
