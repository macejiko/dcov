# small hack to make django reload and generate coverage files
echo "  " >> snippets/models.py

coverage combine
coverage report
coverage html -d coverage


