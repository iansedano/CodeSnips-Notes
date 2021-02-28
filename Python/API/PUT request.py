'''

similar to POST but also used to send information to the server.

'''

import requests

base_url = "http://demo.codingnomads.co:8080/tasks_api/users"

body = {
    "id": 117,
    "first_name": "Ian updated",
    "last_name": "Polar",
    "email": "ian@fakedomaino.com"
}

response = requests.put(base_url, json=body)  # PUT

print(f"response code: {response.status_code}")

response = requests.get(base_url)

print(f"Response Content: {response.content}")


