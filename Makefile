auto-commit:
	git add .
	git commit -m "automated commit $(shell date +'%Y-%m-%d %H:%M:%S')"
	git push origin master
