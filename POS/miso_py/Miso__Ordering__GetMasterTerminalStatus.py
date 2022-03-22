from zeep import Client
from zeep.transports import Transport
import requests

accessToken  = 'uj2TW2YVC0KxklRwBAfihg=='
locationToken = 'uvRXKyTT2E2u4h4xBY6CkA=='

#Include tokens in HTTP Web Request Headers
session = requests.Session()
session.headers.update({'AccessToken':accessToken,'LocationToken':locationToken})
transport = Transport(session=session)

#Connect to Ordering service client
client = Client(wsdl='https://api-apiint.brinkpos.net/Ordering.svc?Wsdl', transport=transport)
service = client.create_service(
    '{http://tempuri.org/}BasicHttpBinding_IOrderingWebService',
    'https://api-apiint.brinkpos.net/Ordering.svc'
)

try:
    #Make GetMasterTerminalStatus call
    res = service.GetMasterTerminalStatus()

    #If call is successful
    if(res.ResultCode == 0):
        print("Status: {}".format(res.Status))
        if(res.Status == 1):
            print("Master Terminal is Online.")
        else:
            print("Master Terminal is Offline.")
    else:
        print("Error Code: " + str(res.ResultCode))
        print("Message: " + res.Message)
except Exception as e:
    print(e)
