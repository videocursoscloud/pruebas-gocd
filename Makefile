all:	clean prereq run
clean:
	rm -rf venv
	rm -rf tutorial/instance/flaskr.sqlite

prereq:
	python3 -m venv venv
	bash -c "cd tutorial; ../venv/bin/pip install -e ."
test:
	echo 'ejecutando tests'

deploy:
	echo 'ejecutando despliegue'
run:
	FLASK_APP=flaskr FLASK_ENV=development ./venv/bin/flask init-db
	FLASK_APP=flaskr FLASK_ENV=development ./venv/bin/flask run
