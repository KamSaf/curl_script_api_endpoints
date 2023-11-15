echo "Goals API requests:"


### GET ###

# get all goal objects from database
curl -X GET http://127.0.0.1:8000/goals/
echo

# get goal objects from database
curl -X GET http://127.0.0.1:8000/goals/<goal_id>/
echo


### POST ###

# create goal in database
curl -X POST http://127.0.0.1:8000/goals/ -d '{"item": "do something"}' 


### PUT ###

# updates chosen goal in database
curl -X PUT http://127.0.0.1:8000/goals/<goal_id>/ -d '{"item": "do something else"}'


### DELETE ###

# deletes chosen goal from database
curl -X DELETE http://127.0.0.1:8000/goals/<goal_id>/ 

echo
echo "JSONBIN.io API requests:"


### GET ###

# returns JSON chosen JSON file from server, authentication through predefined Master Key
curl -H "X-Master-key: <YOUR_API_MASTER_KEY>" \
	 --request GET https://api.jsonbin.io/v3/b/<JSON_BIN_ID>/
echo

# returns JSON chosen JSON file from server, authentication through Access Key created by user, omits all the metadata, displays only file content
curl -H "X-Access-key: <YOUR_API_ACCESS_KEY>" -H "X-Bin-Meta: false" \
	 --request GET https://api.jsonbin.io/v3/b/<JSON_BIN_ID>/ 
echo


### POST ###

# creates new JSON file on server
curl -H "Content-Type: application/json" -H "X-Master-key: <YOUR_API_MASTER_KEY>" \
  	--request POST --data '{"name": "New JSON"}' https://api.jsonbin.io/v3/b/
echo


### PUT ###

# updates chosen JSON file on server
curl -H "Content-Type: application/json" -H "X-Master-key: <YOUR_API_MASTER_KEY>" \
 	--request PUT --data '{"sample": "Have a nice day!"}' https://api.jsonbin.io/v3/b/<JSON_BIN_ID>/ 
echo

### DELETE ###

# deletes chosen JSON file from server
curl -H "X-Master-key: <YOUR_API_MASTER_KEY>" \
  	--request DELETE https://api.jsonbin.io/v3/b/<JSON_BIN_ID>/

