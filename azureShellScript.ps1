echo "Here we are going to fetch a cat fact"

ls -ial

$params = @{ 
 Uri = "https://cat-fact.herokuapp.com/facts/random"
 Method = "Get"
 }

$response = Invoke-Webrequest @params

echo "$response"

echo "Cat fact fetched success"
