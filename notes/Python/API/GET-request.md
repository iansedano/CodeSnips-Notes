```python
# when you visit a page in a web browser, you are making a GET request. 


import requests

base_url = "http://demo.codingnomads.co:8080/tasks_api/users"
response = requests.get(base_url)
print(response.status_code)


'''
query parameters

http://demo.codingnomads.co:8080/tasks_api/tasks?userId=1&complete=true

everything after the ? is a query parameter

key value pairs separated by &

returns only userID 1
'''

response = requests.get("http://demo.codingnomads.co:8080/tasks_api/users?email=ryan@codingnomads.co")
print(response.status_code)

# above is equivalent to 

params = {
	"email": "ryan@codingnomads.co"
}

response = requests.get("http://demo.codingnomads.co:8080/tasks_api/users", params = params)
print(response.status_code)
```