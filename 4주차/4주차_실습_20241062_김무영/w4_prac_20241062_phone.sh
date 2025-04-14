DATAFILE="./data"
if [ "$#" -eq 0 ]
then
    echo "error"
    exit 1
fi

pattern="$1"
shift

for arg in "$@"; do
     pattern="${pattern}|${arg}"
done
pattern="(${pattern})"

egrep -i "$pattern" "./data" > tmp
awk -f display.awk tmp

