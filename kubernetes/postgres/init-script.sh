#!/bin/bash

set -e

# If we are the first pod (postgres-0), initialize as master
if [[ "$(hostname)" == "postgres-0" ]]; then
  echo "🚀 Starting as Master!"
else
  echo "📥 Configuring as Replica..."
  
  # Clear data directory for the replica
  rm -rf /var/lib/postgresql/data/*
  
  # Run pg_basebackup using the replication slot
  PGPASSWORD=${POSTGRES_PASSWORD} pg_basebackup -h postgres-0.postgres.persistance.svc.cluster.local -D /var/lib/postgresql/data -U replicator -P -R -X stream -C --slot=replica_slot

  echo "🎉 Replica setup completed!"
fi
