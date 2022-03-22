from zeep import Client
from zeep.transports import Transport
import requests
import sys

passed_in_args = len(sys.argv)
#int passed_in_orderid

#for  passed_in_loop in range(1, passed_in_args):
#     print(sys.argv[passed_in_args])
  
passed_in_orderid = sys.argv[1]
print("passed_in_orderid=", passed_in_orderid);

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
#orderId = 8771730409474
orderId = passed_in_orderid

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
                print('~~Description: ' + str(entry.Description) + '~' + '\tId: ' + str(entry.Id) + '~' + '\tItemId: ' + str(entry.ItemId) + '~' + '\tPrice: ' + str(entry.Price))
        print('~^~Id: ' + str(order.Id) + '~' + 'Name: ' + str(order.Name) + '~' + 'Subtotal: ' + str(order.Subtotal) + '~' + 'Tax: ' + str(order.Tax) + '~' + 'Total: ' + str(order.Total))
    else:
        print("Error Code: " + str(res.ResultCode))
        print("Message: " + res.Message)
except Exception as e:
    print(e)
