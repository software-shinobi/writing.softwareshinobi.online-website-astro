# quick start

set -e

set -x

reset

clear

echo
echo "npm installing..."
echo

npm install

echo
echo "npm starting..."
echo

npm start

echo
echo "firefox opening..."
echo

firefox http://localhost:3000
