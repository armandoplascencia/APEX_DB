from zeep import Client
from zeep.transports import Transport
import requests
import sys

accessToken  = 'uj2TW2YVC0KxklRwBAfihg=='
locationToken = 'uvRXKyTT2E2u4h4xBY6CkA=='

#Include tokens in HTTP Web Request Headers
session = requests.Session()
session.headers.update({'AccessToken':accessToken,'LocationToken':locationToken})
transport = Transport(session=session)

client = Client('https://api-apiint.brinkpos.net/Sales2.svc?Wsdl', transport=transport)
service = client.create_service(
    '{http://tempuri.org/}BasicHttpBinding_ISalesWebService2',
    'https://api-apiint.brinkpos.net/sales2.svc')

try:
    #Make GetCurrentBusinessDate call
    res = service.GetCurrentBusinessDate()

    #If call is successful
    if (res.ResultCode == 0):
        print("Current Business Date: {}".format(res.BusinessDate))
    else:
        print("Error Code: " + res.ResultCode)
        print("Message: " + res.Message)
except Exception as e:
    print(e)
