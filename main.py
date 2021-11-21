import requests
url = 'http://chatbot_heroku.herokuapp.com/webhooks/rest/webhook' ##change rasablog with your app name
myobj = {
"message": "hi",
"sender": "Nitin",
}
x = requests.post(url, json = myobj)
print(x.text)
