#!/bin/sh

# check if port variable is set or go with default
if [ -z ${PORT+x} ]; then echo "PORT variable not defined, changed to default port."; else export N8N_PORT="$PORT"; echo "PostgREST will start on '$PORT'"; fi

export PGRST_SERVER_HOST=0.0.0.0
export PGRST_SERVER_PORT=${PORT}
export PGRST_DB_URI=${PGRST_DB_URI:-${DATABASE_URL}}
export PGRST_DB_SCHEMA=${PGRST_DB_SCHEMA=public}
export PGRST_JWT_SECRET=${PGRST_JWT_SECRET}

# kickstart postgrest
postgrest
