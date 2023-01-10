cd ..
cd C:\Users\LeonWilliams\GitHub
start http://127.0.0.1:8888/lab
docker run -it --rm -p 8888:8888 --ip 0.0.0.0 -v C:\Users\LeonWilliams\GitHub:/home/jovyan docker-jupyter-extensible

