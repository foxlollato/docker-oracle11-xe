#!/bin/bash
usage() {
    cat << EOF

    Build usage: $0 build

    Run usage: 
        Persistent container: $0 run [LOCAL_VOLUME] [ORACLE_PASSWORD]
        Don't forget <LOCAL_VOLUME> next run.

        Non persistent container: $0 run [ORACLE_PASSWORD]

        LICENSE UPL 1.0

EOF
    exit 1
}

build(){
    ./buildDockerImage.sh -v 11.2.0.2 -x
    exit 0
}

runPersistent(){
    ./runDockerImage.sh $1 $2
    exit 0
}

runNonPersistent(){ 
    ./runDockerImage.sh $1
    exit 0
}


if [ "$#" -lt 1 ] || [ "$#" -gt 4 ]; then
    
    usage;    

elif [ "$1" != 'build' ] && [ "$1" != 'run' ]; then

    usage;
fi

if [ "$1" == "build" ]; then    
    build;
elif [ "$#" -eq 3 ]; then 
        runPersistent $2 $3;
elif [ "$#" -eq 2 ]; then
        runNonPersistent $2;
else
    usage;
fi
 