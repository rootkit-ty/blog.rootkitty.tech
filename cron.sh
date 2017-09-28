date >> logs/git.log
echo "Attempting to pull repo" >> logs/git.log
git pull origin master >> logs/git.log

date >> logs/hugo.log
echo "Attempting to build HTML with Hugo" >> logs/hugo.log
hugo >> logs/hugo.log
