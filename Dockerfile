FROM postgrest/postgrest

ARG DATABASE_URL
ARG PORT
ARG PGRST_JWT_SECRET
ARG PGRST_DB_SCHEMA=public
ARG PGRST_DB_URI

ENV PGRST_SERVER_HOST=0.0.0.0
ENV PGRST_SERVER_PORT=$PORT
ENV PGRST_DB_URI=$DATABASE_URL
ENV PGRST_DB_SCHEMA=$PGRST_DB_SCHEMA
ENV PGRST_JWT_SECRET=$PGRST_JWT_SECRET

CMD ["postgrest"]
