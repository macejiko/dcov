# small hack to make django reload and generate coverage files
docker exec -it dcov bash -c 'echo "  " >> snippets/models.py'

sleep 2 # server reload

docker exec -it dcov bash -c 'coverage combine'
docker exec -it dcov bash -c 'coverage report'
docker exec -it dcov bash -c 'coverage html -d coverage'


