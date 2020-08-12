# github-pages

## To run in docker locally:
docker build -t github-pages .
docker run -it -p 1313:1313 -v $(pwd):/website github-pages /bin/bash -x run.sh
