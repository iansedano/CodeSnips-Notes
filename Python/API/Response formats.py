'''
When working with RESTful API you usually encounter 3 formats
JSON HTML XML

JSON (javascript object notation)



jsonentry =  {
    "first_name" : "Ryan",
    "last_name" : "Desmond",
    "email" : "ryan@codingnomads.co"
}

#equivalent python class

class User
	def __init__
		self
		self
		self


 typical JSON format

{ "users" : [ 
    {

        "first_name" : "Ryan",
        "last_name" : "Desmond",
        "email" : "ryan@codingnomads.co"
    }, 

    {
        "first_name" : "Kim",
        "last_name" : "Desmond",
        "email" : "kim@codingnomads.co"
    }, 

    {
        "first_name" : "Martin",
        "last_name" : "Breuss",
        "email" : "martin@codingnomads.co"
    } ]
} 

NOTICE the [] that signify array.

python has a built in json package.



**XML**

not ideal, but python package ElementTree is useful for it.

<users>
    <user>
        <first_name>Ryan</first_name>
        <last_name>Desmond</last_name>
        <email>ryan@codingnomads.co</email>
    </user>

    <user>
        <first_name>Kim</first_name>
        <last_name>Desmond</last_name>
        <email>kim@codingnomads.co</email>
    </user>

    <user>
        <first_name>Martin</first_name>
        <last_name>Breuss</last_name>
        <email>martin@codingnomads.co</email>
    </user>
</users>



**HTTP RESPONSE**

various parts to HTTP
CONTENT
HEADERS
OTHER
'''

import requests

base_url = "http://demo.codingnomads.co:8080/tasks_api/users"
response = requests.get(base_url)

print(f"Response Content: {response.content}")
print(f"Response Status Code: {response.status_code}")
print(f"Response Headers: {response.headers}")
print(f"Response Encoding: {response.encoding}")
print(f"Response URL: {response.url}")


