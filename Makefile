buildFrontend:
	sudo chmod -R 777 /var/www/html
	sudo chmod -R 777 /etc/nginx/sites-enabled
	mkdir -p /var/www/html/xms
	cd frontend; npm install; npm run build; cp -r -v ./build/* /var/www/html/xms; cd ..
	cp templates/nginx.conf /etc/nginx/sites-enabled/xms.conf

buildBackend:
	cd backend; python3 init.py

deploy: buildFrontend buildBackend
	@echo "All done! XmediaCenter 2 has deployed on localhost:11452. Restart nginx and use 'make runBackend' to start XmediaCenter 2"

runBackend:
	cd backend; python3 app.py