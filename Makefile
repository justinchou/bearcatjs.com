all: update
	hexo clean
	hexo generate
	cp -rf bearcat-examples public/examples

g:
	hexo clean
	hexo generate
	hexo server

generate: g

deploy:	all
	hexo deploy

update:
	cd bearcat-examples && git checkout master && git pull
