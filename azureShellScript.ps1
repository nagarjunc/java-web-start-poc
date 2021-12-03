echo "Here we are going to fetch a cat fact"

ls -ial

URL="https://cat-fact.herokuapp.com/facts/random"

response=$(curl -s -w "%{http_code}" $URL)

http_code=$(tail -n1 <<< "$response")  # get the last line
content=$(sed '$ d' <<< "$response")   # get all but the last line which contains the status code

echo "$http_code"
echo "$content"

echo "Cat fact fetched success"
