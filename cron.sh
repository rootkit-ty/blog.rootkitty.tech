date >> logs/git.log
echo "Attempting to pull repo" >> logs/git.log
git fetch --recurse-submodules -q origin master >> logs/git.log

date >> logs/hugo.log
echo "Attempting to build HTML with Hugo" >> logs/hugo.log
/usr/local/bin/hugo >> logs/hugo.log

echo "Finish" >> logs/hugo.log
echo "Finish" >> logs/git.log
