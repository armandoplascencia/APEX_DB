# first of all import the socket library
import socket, re

# will be used to find the item name
lengthOfEscapeCharacters = len('''\n\x1br\x01\x1br\x00''')

# next create a socket object
s = socket.socket()		
print ("Socket successfully created")

# reserve a port on your computer in our
# case it is 12345 but it can be anything
port = 9100			

# Next bind to the port
# we have not typed any ip in the ip field
# instead we have inputted an empty string
# this makes the server listen to requests
# coming from other computers on the network
s.bind(('', port))		
print ("socket binded to %s" %(port))

# put the socket into listening mode
s.listen(5)	
print ("socket is listening")		

# a forever loop until we interrupt it or
# an error occurs
while True:
    # Establish connection with client.
    c, addr = s.accept()
    print ('Got connection from', addr )
    try:
        data = c.recv(1024).decode()
        buffer = ''
        while data:
            print("Received data", data)
            if (data == u'\x1b@\x10\x04\x02'):
                c.send("1".encode("ASCII"))
            else:
                buffer += data
                firstIndex = data.find('''\x1br\x00\x1dB\x00''')
                secondIndex = data[firstIndex:].find('''\n\x1br\x01\x1br\x00''')
                itemName = data[firstIndex + lengthOfEscapeCharacters - 1: firstIndex + secondIndex]
                print("Item: ", itemName)
            data = c.recv(1024).decode("ASCII")
        c.close()
    except Exception as e:
        print("Error", e)
        c.close()
        break