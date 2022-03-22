from zeep import Client
from zeep.transports import Transport
import requests
import sys

passed_in_args = len(sys.argv)

##for  passed_in_loop in range( 1, passed_in_args):
##     print(sys.argv[passed_in_args])

passed_in_item = sys.argv[1]
print("passed_in_item=", passed_in_item)


#Helper Class to Get Type Without Knowing Namespace Level
class RequestType(object):
    def __init__(self, client, name):
        self.client = client
        self.name = name     

    def MakeElementDictionary(self, client):
        elmDict = {}
        for elmObj in sorted(client.wsdl.types.elements, key=lambda k: k.qname or ""):
            value = elmObj.signature(schema=client.wsdl.types)
            if (value != ''): 
                elm = value.split('(')[0]
                elmNs, elmType = elm.split(':')
                elmDict[elmType] = elmNs
        return elmDict

    def SearchNameSpaceFromName(self, client, name):
        elmDict = self.MakeElementDictionary(client)
        if name in elmDict:
            return elmDict[name]

    @property
    def _type(self):
        return self.client.get_type(self.SearchNameSpaceFromName(self.client, self.name) + ':' + self.name)

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
    'https://api-apiint.brinkpos.net/Ordering.svc' )

#Prepare the dynamic type for GetItemAvailabilityRequest
    
items = []
#itemId = 12345
itemId = passed_in_item
items.append(itemId)

reqType = Request_Type(client, 'GetItemAvailabilityRequest')._type
itemArrayType = Request_Type(client, 'ArrayOfint')._type
itemArray = itemArrayType(int = items)
req = reqType(ItemIds = itemArray)

count = 1

try:
    #Make GetItemAvailability call
    res = service.GetItemAvailability(req)

    #If call is successful
    if(res.ResultCode == 0):
        
        if(res.Details != None):
            for detail in res.Details.ItemAvailabilityDetail:
                print("Detail # " + str(count))
                print("--------------------------")
                print("IsAvailable: " + str(detail.IsAvailable))
                print("ItemId: " + str(detail.ItemId))
                print("QuantityAvailable: " + str(detail.QuantityAvailable))
                print("--------------------------")
                count += 1
        print("End")
    else:
        print("Error Code: " + str(res.ResultCode))
        print("Message: " + res.Message)
except Exception as e:
    print(e)
