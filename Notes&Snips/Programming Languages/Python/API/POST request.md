```python
'''

POST requests can send data to a server

'''

import requests

base_url = "http://demo.codingnomads.co:8080/tasks_api/users"

body = {
    "first_name": "Ian",
    "last_name": "Polar",
    "email": "ian@fakedomain.com"
}

response = requests.post(base_url, json=body)

print(f"response code: {response.status_code}")

response = requests.get(base_url)
print(f"Response Content: {response.content}")
```