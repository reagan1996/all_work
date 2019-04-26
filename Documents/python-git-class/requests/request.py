import requests

requests_bbc = requests.get("http://www.bbc.co.uk/news")

print(requests_bbc)
print(requests_bbc.status_code)
print(requests_bbc.headers)

# Do not name the file the same as the import

