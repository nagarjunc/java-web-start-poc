echo "Here we are going to fetch a cat fact"

ls -ial

curl.exe -Uri 'https://cat-fact.herokuapp.com/facts/random' | select-object StatusCode

echo "-----------------------------------------------------------------------------------"
$params = @{ 
 Uri = "https://cat-fact.herokuapp.com/facts/random"
 Method = "Get"
 }

$response = Invoke-Webrequest @params

echo "$response"

echo "Cat fact fetched success"
