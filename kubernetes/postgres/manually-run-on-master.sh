# Add replication connection entry in pg_hba.conf
                echo "host replication replicator 10.244.0.0/16 trust" >> /var/lib/postgresql/data/pg_hba.conf
                # create replicator user with replication role
                PGPASSWORD=${POSTGRES_PASSWORD} psql -U ${POSTGRES_USER} -c "CREATE ROLE ${POSTGRES_REPLICATION_USER} WITH REPLICATION LOGIN PASSWORD '${POSTGRES_REPLICATION_PASSWORD}';"
# restart deployment