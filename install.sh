#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No arguments provided"
    echo "Please provide argument while runing installer."
    echo "Argument Example: python3 or python2 or python(if using virtual environment)"
    exit 1
fi

#Unzip the setup file
unzip pythonagent.zip

#installing pip if not there
apt -f install python-pip

#Install pythonagent setup...
$1 -m pip install ./pythonagent*tar.gz 

#Install agent dependencies lib...
$1 -m pip install ./greenlet*tar.gz
$1 -m pip install ./Werkzeug*tar.gz 

$1 -m pip install watchdog-2.1.2.tar.gz 2> /dev/null || $1 -m pip install watchdog-0.10.6.tar.gz

#Copy the required SO dependencies on define destination
unzip -o alllibs.zip -d /usr/local/lib/

#Copy script file to bin
OUTPUT=$(which $1)
echo "#!""${OUTPUT}" | cat - cavagent > temp && mv temp $(dirname "${OUTPUT}")/cavagent
chmod +x $(dirname "${OUTPUT}")/cavagent

home='/opt/cavisson/netdiagnostics'
path=${ND_HOME:-$home}

mkdir -p $path/CavAgent/

cp -u instrumentationprofile.json $path/CavAgent/
cp -u interceptor_points.txt $path/CavAgent/
rm cavagent alllibs.zip pythonagent*tar.gz greenlet*tar.gz Werkzeug*tar.gz instrumentationprofile.json interceptor_points.txt watchdog*.gz

echo "Pythonagent Successfully installed..."
