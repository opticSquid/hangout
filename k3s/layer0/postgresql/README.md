# Steps

1. run
```sh
./runner.sh
```
this would create the cluster and databases

2. To connect to the database admin ui we will also deploy pgadmin4
```sh
./pgadmin4/runner.sh
```
this will deploy pgadmin in the same namespace as postgres. Connect to the cluster from pgadmin panel using the service and the secret

