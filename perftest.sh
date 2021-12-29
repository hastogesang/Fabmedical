host="fabmedical-888.mongo.cosmos.azure.com"
username="fabmedical-888"
password="BfR91qVXsEvo4j6LkqQK1MWaSoUFYKd1bqkg7d4hulUBJCcZMneH9b4hzc55jvGF0NSEJWBoh4ixM0odOZ2CvA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
