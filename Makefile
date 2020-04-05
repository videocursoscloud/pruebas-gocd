usage:
	@echo "Run Make with one of the following options:"
	@echo "test_gocd, clean, prereq, test, deploy or run"
test_gocd:	clean prereq test
clean:
	rm -rf venv
	rm -rf tutorial/instance/flaskr.sqlite

prereq:
	python3 -m venv venv
	./venv/bin/pip install pytest
	bash -c "cd tutorial; ../venv/bin/pip install -e ."
test:
	./venv/bin/pytest
	echo 'ejecutando tests'

deploy:
	echo 'ejecutando despliegue'
run:
	FLASK_APP=flaskr FLASK_ENV=development ./venv/bin/flask init-db
	FLASK_APP=flaskr FLASK_ENV=development ./venv/bin/flask run
