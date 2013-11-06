clean:
	git clean -fdx

status:
	git status

publish:
	git diff --word-diff=color
	git add .
	git commit -s
	git push

.PHONY: clean publish status

