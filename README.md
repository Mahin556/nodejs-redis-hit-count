# nodejs-redis-hit-count

The code uses the Express web server package to create a simple hit tracking application. Each time you visit the app, it logs your hit in Redis, then displays the total number of page loads.

Use npm to install the app’s dependencies:
```
$ npm install express redis
```

In the app.js file, we set the Redis client URL to redis:6379. The redis hostname matches the name of the redis service in docker-compose.yml. 

Compose uses the names of your services to assign your container hostnames; because the containers are part of the same Docker network, your app container can resolve the redis hostname to your Redis instance.
