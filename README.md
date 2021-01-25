## Part I:  

1. `cd` into the solution directory.  
2. Build image using:  `docker build -t infracloudio/csvserver .`

-> To find the port on which the container is listening use: `netstat -nlp | grep 'csvserver'`

3. Run the container using `docker run -d -p 9393:9300 infracloudio/csvserver:latest`
  

## Part II
1. Delete only container from last part not image.
2. Run `docker-compose up`

## Part III
1. `cd` into `/solution/prometheus`
2. Build image with `docker build -t prom/prometheus .`
3. Delete any containers from part 2.
4. Run `docker-compose up`

## Possible error:
If docker-compose fails on Linux distros; change line 9 of `/solution/prometheus/prometheus.yml` to: `    - targets: ['localhost:9393']`   
