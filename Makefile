clean:
	git clean -fdx

nuke: clean
	git reset --hard
	git status

status:
	git status

publish:
	git diff --word-diff=color
	git add .
	git commit -s
	git push

.PHONY: clean publish status nuke

