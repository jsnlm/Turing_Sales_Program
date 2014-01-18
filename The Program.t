/*When a customer brings their purchases up to the cash register, 
the bar code of the item will be scanned by your program. 
When all the items are scanned, a receipt will be 
printed out on the computer screen showing;

"       Item's description, quantity and total price for each item purchased
"       Amount of Tax owed (HST)
"       Total cost of the sale
(Look at some receipts to give you an idea for formatting)

Mouse               12345 
Keyboard            23456 
Monitor             54321
320 Gb HD           98765
32 Gb USB Key       24680 
Laser Printer       35791 
Microphone          65789 
i5-580 processor    43543 
MSI Video Card      76543 
ASUS Motherboard    55544
End of Transaction  10101

Mouse               
Keyboard            
Monitor             
320 Gb HD           
32 Gb USB Key       
Laser Printer       
Microphone          
i5-580 processor    
MSI Video Card      
ASUS Motherboard    
End of Transaction  

e12345 
e23456 
e54321
e98765
e24680
e35791
e65789
e43543
e76543
e55544
e10101

12345 
23456 
54321
98765
24680
35791
65789
43543
76543
55544
10101

*/
var product:int

var e12345:int:=0 
var e23456:int:=0 
var e54321:int:=0
var e98765:int:=0
var e24680:int:=0
var e35791:int:=0
var e65789:int:=0
var e43543:int:=0
var e76543:int:=0
var e55544:int:=0
var e10101:int:=0

loop
    loop
	put "please scan a product"
	get product
	exit when product=12345 or product=23456 or product=54321 or product=98765 or product=24680 or product=35791 or product=65789 or product=43543 or product=76543 or product=55544 or product=10101
	put "That is an invalid product"
    end loop
    case product of
	label 12345:
	    e12345:=e12345+1
	label 23456:
	    e23456:=e23456+1
	label 54321:
	    e54321:=e54321+1
	label 98765:
	    e98765:=e98765+1
	label 24680:
	    e24680:=e24680+1
	label 35791:
	    e35791:=e35791+1
	label 65789:
	    e65789:=e65789+1
	label 43543:
	    e43543:=e43543+1
	label 76543:
	    e76543:=e76543+1
	label 55544:
	    e55544:=e55544+1
	label 10101:
	    e10101:=e10101+1
    end case
    exit when e10101=1
end loop
if e12345>=1 then
    put "mouse...Quantity: ", e12345
end if
if e23456>=1 then
    put "Keyboard...Quantity: ", e23456
end if
if e54321>=1 then
    put "Monitor...Quantity: ", e54321
end if
if e98765>=1 then
    put "320 Gb HD...Quantity: ", e98765
end if
if e24680>=1 then
    put "32 Gb USB Key...Quantity: ", e24680
end if
if e35791>=1 then
    put "Laser Printer...Quantity: ", e35791
end if
if e65789>=1 then
    put "Microphone...Quantity: ", e65789
end if
if e43543>=1 then
    put "i5-580 processor...Quantity: ", e43543
end if
if e76543>=1 then
    put "MSI Video Card...Quantity: ", e76543
end if
if e55544>=1 then
    put "ASUS Motherboard...Quantity: ", e55544
end if

	       
	    
	     
	   
       
       
	  
    
      
 
