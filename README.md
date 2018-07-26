# docker-oracle11-xe
Few steps to build and run a Docker container running Oracle 11.2.0.2 Express Edition with Oracle Linux 7.


Run usage: 
    
    Don't forget <LOCAL_VOLUME> next run.

    NON PERSISTENT container: $0 run [ORACLE_PASSWORD]


1. First, download binaries from http://download.oracle.com/otn/linux/oracle11g/xe/oracle-xe-11.2.0-1.0.x86_64.rpm.zip and store at ./11.2.0.2/ directory located in this repo.
2. Then, to build image, just run following command:
    BUILD: "./dockerMaker build"
3. And start your docker container. You can start persistent and non persistent database container.
    1. PERSISTENT: "./dockerMaker.sh run [LOCAL_VOLUME] [ORACLE_PASSWORD]"
    2. NON PERSISTENT: "./dockerMaker.sh run [ORACLE_PASSWORD]"