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

add:
	git add .

commit: add
	git commit -s

publish: commit
	git push

.PHONY: clean publish status nuke reset diff commit add

