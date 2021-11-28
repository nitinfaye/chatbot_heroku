
import requests
url = 'https://rasa-ch-bot.herokuapp.com/webhooks/rest/webhook'
myjob ={
"messge": "hi",
"sender":"Nitin",
}
x = requests.post(url,json = myjob)
print(x.text)