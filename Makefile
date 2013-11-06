clean:
	git clean -fdx

nuke: clean
	git reset --hard
	git status

reset:
	-find -type f | egrep -v '^./(.git|.gitignore|Makefile|CNAME)$$' | xargs git rm

status:
	git status

diff:
	git diff --word-diff=color

publish:
	git add .
	git commit -s
	git push

.PHONY: clean publish status nuke reset diff

