# PoC for python app coverage in docker

This is dockerized Django app from django-rest-framework tutorial with installed coverage.py tool

Fork from here: https://github.com/encode/rest-framework-tutorial

You could install it locally or via docker

Admin user: admin / 123

*Coverage data is saved when server is stopped*

## Local

### Install locally

```bash
mkdir coverage
virtualenv env && source env/bin/activate
cp sitecustomize.py env/lib/python2.7/site-packages/sitecustomize.py
pip install -r requirements.txt
python manage.py migrate
python manage.py loaddata snippets/fixtures/users.json
```

### Run

```bash
python manage.py runserver
```

### Generate coverage report:

```bash
./local_coverage.sh
```

Coverage will be in `coverage/` dir. HTML report will be there as well

## Docker

### Install

```bash
docker build -t dcov .
```

### Run

```bash
docker run -d -p 8000:8000 -it --name dcov dcov
```

### Generate coverage report:

```bash
./docker_coverage.sh
```

## Test to get more coverage:

```bash
./run_tests.sh
```

This will add 6 additional statsments of code to models.py and change whole coverage 37% -> 42%



