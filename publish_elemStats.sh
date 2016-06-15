# A copy of this file is in my home directory.  To publish to github, I make sure that
# I am on the master branch of the repo.  Then I open a terminal, cd to home, and
# run this command:

# bash ./publish_elemStats.sh

mkdir ~/elemStats
cp -rf ~/git/elemStats/_book ~/elemStats
cd ~/git/elemStats
git checkout gh-pages
rm -rf *
cp -rf ~/elemStats/_book/* .
touch .nojekyll
git add --all
git commit -m "publish this version"
git push origin gh-pages
git checkout master
cd ~
rm -rf elemStats
