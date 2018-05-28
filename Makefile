deps:
	go get -u -v github.com/gobuffalo/buffalo/buffalo
	npm install --save-dev

build: 
	ng build
	buffalo build	

clean:
	docker stop $$(docker ps -a -q)
	docker rm $$(docker ps -a -q)

dcu:
	docker-compose up -d

db: 
	buffalo db create -a

dev-server:
	buffalo dev
