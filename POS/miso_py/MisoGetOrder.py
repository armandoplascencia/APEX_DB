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

client = Client('https://api-apiint.brinkpos.net/Ordering.svc?Wsdl',transport=transport)

#service = client.create_service('{http://www.brinksoftware.com/webservices/ordering/20140219}BasicHttpBinding_IOrderingWebService',
#    'https://{api-devapi01.brinkpos.net/ordering.svc')

service = client.create_service( '{http://tempuri.org/}BasicHttpBinding_IOrderingWebService', 'https://api-apiint.brinkpos.net/Ordering.svc')


#Include OrderId - type Int64 parameter in request body
#int orderId = {OrderID}
orderId = 8771730409474
reqType = client.get_type('ns1:GetOrderRequest')
req = reqType(OrderId=orderId)

try:
    #Make GetOrder call
    res = service.GetOrder(req)

    #If call is successful
    if(res.ResultCode == 0):
        order = res.Order
        print('Balance: ' + str(order.Balance))
        if(order.Entries != None):
            print('Entries:')
            #Loop through collection of OrderEntry objects returned
            for entry in order.Entries.OrderEntry:
                print('\tDescription: ' + str(entry.Description))
                print('\tId: ' + str(entry.Id))
                print('\tItemId: ' + str(entry.ItemId))
                print('\tPrice: ' + str(entry.Price))
                print('\t------------')
        print('Id: ' + str(order.Id))
        print('Name: ' + str(order.Name))
        print('Subtotal: ' + str(order.Subtotal))
        print('Tax: ' + str(order.Tax))
        print('Total: ' + str(order.Total))
        print('---------------------------')
        print('End')
    else:
        print("Error Code: " + str(res.ResultCode))
        print("Message: " + res.Message)
except Exception as e:
    print(e)
