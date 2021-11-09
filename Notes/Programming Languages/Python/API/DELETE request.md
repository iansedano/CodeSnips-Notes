```python
'''

DELETE

'''

import requests

base_url = "http://demo.codingnomads.co:8080/tasks_api/users"

response = requests.delete(base_url + "/117")

print(response.status_code)

```