set -e
set -x

coproc macaroons (echo $(date))

echo "The coprocess array: ${macaroons[@]}"
echo "The PID of the coprocess is ${macaroons_PID}"
# Read the output off the first file descriptor of the array.                                                                                
read -r output <&"${macaroons[0]}"
echo "The output of the coprocess is ${output}"
