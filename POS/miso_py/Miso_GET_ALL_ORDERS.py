from zeep import Client
from zeep.transports import Transport
import requests
import sys

from datetime import datetime

def display_modifiers(modifiers, depth = 1):
    print('\t' * (depth) + 'Modifiers:')
    #Loop through collection of OrderItemModifier objects returned
    for mod in modifiers.OrderItemModifier:
        print('\t' * (depth + 1) + 'Id: ' + str(mod.Id))
        print('\t' * (depth + 1) + 'ItemId: ' + str(mod.ItemId))
        print('\t' * (depth + 1) + 'ModifierCodeId: ' + str(mod.ModifierCodeId))
        print('\t' * (depth + 1) + 'ModifierGroupId: ' + str(mod.ModifierGroupId))
        print('\t' * (depth + 1) + 'Price: ' + str(mod.Price))      
        if (mod.Modifiers != None):   
            display_modifiers(mod.Modifiers, (depth + 2))          
        else:
            print('\t' * (depth + 1) + 'Modifiers: None')

#passed_in_args = len(sys.argv)
#passed_in_date = sys.argv[1]
#print("passed in date=", passed_in_date)

accessToken  = 'uj2TW2YVC0KxklRwBAfihg=='
locationToken = 'uvRXKyTT2E2u4h4xBY6CkA=='

#Include tokens in HTTP Web Request Headers
session = requests.Session()
session.headers.update({'AccessToken': accessToken, 'LocationToken': locationToken})
transport = Transport(session=session)

#Connect to Sales2 service client
client = Client('https://api-apiint.brinkpos.net/Sales2.svc?Wsdl', transport=transport)
service = client.create_service(
    '{http://tempuri.org/}BasicHttpBinding_ISalesWebService2',
    'https://api-apiint.brinkpos.net/sales2.svc'
)

#Prepare the dynamic type for GetOrdersRequest
req_type = client.get_type('ns1:GetOrdersRequest')
datetime_offset_type = client.get_type('ns3:DateTimeOffset')

#Include parameters in request body
businessdate = datetime(2022, 01, 20)
modified_date = datetime_offset_type(DateTime=businessdate, OffsetMinutes=0)
req_data = req_type(BusinessDate=businessdate,ExcludeOpenOrders=False,PriceRollUp='RollupandDetails', ModifiedTime=modified_date)

count = 1

try:
    #Make GetOrders call
    res = service.GetOrders(req_data)
	
    # If call is successful
    if(res.ResultCode == 0):
	#Loop through collection of Order objects returned
        for order in res.Orders.Order:
            print('Order #' + str(count))
            print('---------------------------')
            print('BusinessDate: ' + str(order.BusinessDate))
            print('ClosedTime: ')
            print('\tDateTime: ' + str(order.ClosedTime.DateTime))
            print('\tOffsetMinutes: ' + str(order.ClosedTime.OffsetMinutes))
            print('CustomerId: ' + str(order.CustomerId))
            print('EmployeeId: ' + str(order.EmployeeId))
            if(order.Entries != None):
                print('Entries:')
		#Loop through collection of OrderItem objects returned
                for entry in order.Entries.OrderEntry:
                    if(entry.Modifiers != None):
                        display_modifiers(entry.Modifiers)
                    else:
                        print('\tModifiers: None')
            else:
                print('Entries: None')
            print('FirstSendTime:')
            print('\tDateTime: ' + str(order.FirstSendTime.DateTime))
            print('\tOffsetMinutes: ' + str(order.FirstSendTime.OffsetMinutes))
            print('Id: ' + str(order.Id))
            print('IsClosed: ' + str(order.IsClosed))
            print('ModifiedTime: ')
            print('\tDateTime: ' + str(order.ModifiedTime.DateTime))
            print('\tOffsetMinutes: ' + str(order.ModifiedTime.OffsetMinutes))
            print('Name: ' + str(order.Name))
            print('OpenedTime:')
            print('\tDateTime: ' + str(order.OpenedTime.DateTime))
            print('\tOffsetMinutes: ' + str(order.OpenedTime.OffsetMinutes))
            if(order.Payments != None):
                print('Payments:')
		#Loop through collection of OrderPayment objects returned
                for payment in order.Payments.OrderPayment:
                    print('\tId: ' + str(payment.Id))
                    print('\tAmount: ' + str(payment.Amount))
                    print('\tBusinessDate: ' + str(payment.BusinessDate))
                    print('\t-----------------------')
            else:
                print('Payments: None')
            print('PickupTime: ' + str(order.PickupTime))
            print('Total: ' + str(order.Total))
            print('---------------------------')
            count += 1
        print('End')
    else:
        print('Error Code: ' + str(res.ResultCode))
        print('Message: ' + res.Message)
except Exception as e:
    print(e)