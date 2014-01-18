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

 25 Mouse
 25 Keyboard
 100 Monitor
 50 320 Gb HD
 30 32 Gb USB Key
 100 Laser Printer
 20 Microphone
 150 i5-580 processor
 70 MSI Video Card
 90 ASUS Motherboard
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


 Refund e00000


 credit - signature
 debit -  is 4 digit pin number

 formt properly
 comment code
 catalouge

 purchase/refund
 credit or cash


 */
setscreen ("graphics:600;1000")

var decision : string
var counter : int
var card : int
var paymenttype : string
var tmoney : real
var change : real
var product : string
var e12345 : int
var e23456 : int
var e54321 : int
var e98765 : int
var e24680 : int
var e35791 : int
var e65789 : int
var e43543 : int
var e76543 : int
var e55544 : int %Declares the Variables of the number of each products
var e10101 : int
var formofpayment:string

var theDateTime, theDate, theTime : string
theDateTime := Time.Date                        % this will help declare the date and the time
theDate := theDateTime (1 .. 9)
theTime := theDateTime (11 .. *)





loop
    e12345 := 0
    e23456 := 0
    e54321 := 0
    e98765 := 0
    e24680 := 0
    e35791 := 0
    e65789 := 0
    e43543 := 0
    e76543 := 0
    e55544 := 0 %Will restart all the variables to 0 because this will be the start of each purchase and transaction
    loop
	e10101 := 0             %will restart the refund variable so that it will not refund through each loop
	counter := 0            % will restart the variable that will determine if the program will reloop itself so that it won't automatically restart the loop
	loop
	    if e12345 > 0 or e23456 > 0 or e54321 > 0 or e98765 > 0 or e24680 > 0 or e35791 > 0 or e65789 > 0 or e43543 > 0 or e76543 > 0 or e55544 > 0 or e10101 > 0 then
		put "--------------------------------------------------------------"
	    end if
	    if e12345 >= 1 then
		put e12345, " :Mouse(Mice)"
	    end if
	    if e23456 >= 1 then
		put e23456, " :Keyboard(s)"
	    end if
	    if e54321 >= 1 then
		put e54321, " :Monitor(s)"
	    end if
	    if e98765 >= 1 then
		put e98765, " :320 GB HD"
	    end if
	    if e24680 >= 1 then
		put e24680, " :32 GB USB Key(s)"
	    end if
	    if e35791 >= 1 then
		put e35791, " :Laser Printer(s)"        %Will display all the items that the user has scanned
	    end if
	    if e65789 >= 1 then
		put e65789, " :Microphone(s)"
	    end if
	    if e43543 >= 1 then
		put e43543, " :i5-580 processor(s)"
	    end if
	    if e76543 >= 1 then
		put e76543, " :MSI Video Card(s)"
	    end if
	    if e55544 >= 1 then
		put e55544, " :Asus Motherboard(s)"
	    end if



	    put "-----------------------------------------------------"
	    put "Scan the code on the bottom labeled 10101 to stop buying items"
	    put "Scan the code labeled 00000 to refund an item"                             % will give instructions of how to refund and how to finsih buying items
	    put ""
	    put "Total Due", (e12345 * 25 + e23456 * 25 + e54321 * 100 + e98765 * 50 + e24680 * 30 + e35791 * 100 + e65789 * 20 + e43543 * 150 + e76543 * 70 + e55544 * 90) * 1.13 : 20 : 2
	    put "-----------------------------------------------------"

	    loop
		put "Please scan the item you wish to purchase"
		get product
		exit when product = "12345" or product = "23456" or product = "54321" or product = "98765" or product = "24680" or product = "35791" or product = "65789" or product = "43543" or
		    product =
		    "76543" or product = "55544" or product = "10101" or product = "00000"
		% This will see what the user has scanned. This will also re-ask for the user to scan an item if the item is invalid
		put "That is an invaild product"
	    end loop

	    case product of
		label "12345" :
		    e12345 := e12345 + 1
		label "23456" :
		    e23456 := e23456 + 1
		label "54321" :
		    e54321 := e54321 + 1
		label "98765" :
		    e98765 := e98765 + 1
		label "24680" :
		    e24680 := e24680 + 1
		label "35791" :
		    e35791 := e35791 + 1    %Will determine what item has been scanned and record the number of each product that has been scanned
		label "65789" :
		    e65789 := e65789 + 1
		label "43543" :
		    e43543 := e43543 + 1
		label "76543" :
		    e76543 := e76543 + 1
		label "55544" :
		    e55544 := e55544 + 1
		label "10101" :
		    e10101 := e10101 + 1
		label "00000" :

		    loop
			put "Please Scan the product you want to refund"
			get product
			exit when product = "12345" or product = "23456" or product = "54321" or product = "98765" or product = "24680" or product = "35791" or product = "65789" or product = "43543"
			    or
			    product =
			    "76543" or product = "55544" or product = "10101" or product = "00000"
			put "That is an invaild product"                %this will ask the user what they are going to refund. This will also check if the item that has been bought is a valid item.
		    end loop

		    case product of
			label "12345" :
			    if e12345 < 1 then
				put "You can not refund what you don't have"
				delay (1000)
			    else
				e12345 := e12345 - 1
				put "You have refunded one mouse"
				delay (1000)
			    end if
			label "23456" :
			    if e23456 < 1 then
				put "You can not refund what you don't have"
				delay (1000)
			    else
				e23456 := e23456 - 1
				put "You have refunded one Keyboard"
				delay (1000)
			    end if
			label "54321" :
			    if e54321 < 1 then
				put "You can not refund what you don't have"
				delay (1000)
			    else
				e54321 := e54321 - 1
				put "You have refunded one monitor"
				delay (1000)
			    end if
			label "98765" :
			    if e98765 < 1 then
				put "You can not refund what you don't have"
				delay (1000)                                              %This will determine what has been refunded
			    else                                                            % This will also determine if what the user is refunding has already been scanned
				e98765 := e98765 - 1
				put "You have refunded one 320GbHD"
				delay (1000)
			    end if
			label "24680" :
			    if e24680 < 1 then
				put "You can not refund what you don't have"
				delay (1000)
			    else
				e24680 := e24680 - 1
				put "You have refunded one 32 Gb USB Key"
				delay (1000)
			    end if
			label "35791" :
			    if e35791 < 1 then
				put "You can not refund what you don't have"
				delay (1000)
			    else
				e35791 := e35791 - 1
				put "You have refunded one laser printer"
				delay (1000)
			    end if
			label "65789" :
			    if e65789 < 1 then
				put "You can not refund what you don't have"
				delay (1000)
			    else
				e65789 := e65789 - 1
				put "You have refunded one microphone"
				delay (1000)
			    end if
			label "43543" :
			    if e43543 < 1 then
				put "You can not refund what you don't have"
				delay (1000)
			    else
				e43543 := e43543 - 1
				put "You have refunded one i5-580 processor"
				delay (1000)
			    end if
			label "76543" :
			    if e76543 < 1 then
				put "You can not refund what you don't have"
				delay (1000)
			    else
				e76543 := e76543 - 1
				put "You have refunded one MSI Video Card"
				delay (1000)
			    end if
			label "55544" :
			    if e55544 < 1 then
				put "You can not refund what you don't have"
				delay (1000)
			    else
				e55544 := e55544 - 1
				put "You have refunded one ASUS motherboard"
				delay (1000)
			    end if
			label "10101" :
			    put "You can not Refund a 'finished Scanning'"
			    delay (1000)
			label "00000" :
			    put "You can not refund a refund"
		    end case
	    end case
	    cls
	    exit when e10101 = 1                                % will check is the user wanted to finish the transactions
	end loop








	put "Total amount to be paid$", (e12345 * 25 + e23456 * 25 + e54321 * 100 + e98765 * 50 + e24680 * 30 + e35791 * 100 + e65789 * 20 + e43543 * 150 + e76543 * 70 + e55544 * 90) * 1.13 : 0 : 2
	put ""
	put "Will you be paying with cash or credit"
	loop
	    put "If you are paying with cash, enter 1"
	    put "If you are paying with credit, enter 2"
	    put "If you don't have enough money to pay, please enter 3 to refund an item"
	    get paymenttype
	    cls
	    exit when paymenttype = "1" or paymenttype = "2" or paymenttype = "3"                           % will ask the user how they arepaying for the items
	    put "Total amount to be paid  $", (e12345 * 25 + e23456 * 25 + e54321 * 100 + e98765 * 50 + e24680 * 30 + e35791 * 100 + e65789 * 20 + e43543 * 150 + e76543 * 70 + e55544 * 90) * 1.13 : 0 : 22
	    put ""
	    put "That is an invalid input"          % the options available are to pay with cash, credit or to refund an item if they don't have enough money
	    put "please enter a valid option"
	    put ""
	    put ""
	end loop
	if paymenttype = "2" then
	    put "Total amount to be paid  $", (e12345 * 25 + e23456 * 25 + e54321 * 100 + e98765 * 50 + e24680 * 30 + e35791 * 100 + e65789 * 20 + e43543 * 150 + e76543 * 70 + e55544 * 90) * 1.13 : 0 :2
	    put ""
	    put "Please swipe scan your card and enter your pin code"
	    get card                                                                                        %will ask the user to swipe their card and enter their bank password
	    put "You have scanned your card and paid for the items"
	    put ""
	    put ""
	    formofpayment:="credit"
	elsif paymenttype = "1" then
	    loop
		put "Total amount to be paid  $", (e12345 * 25 + e23456 * 25 + e54321 * 100 + e98765 * 50 + e24680 * 30 + e35791 * 100 + e65789 * 20 + e43543 * 150 + e76543 * 70 + e55544 * 90) * 1.13 : 0 :2
		put ""
		put "Please enter the total money you are going to pay"
		put "(This will tell us how much change to give back)"
		get tmoney
		change := tmoney - (e12345 * 25 + e23456 * 25 + e54321 * 100 + e98765 * 50 + e24680 * 30 + e35791 * 100 + e65789 * 20 + e43543 * 150 + e76543 * 70 + e55544 * 90) * 1.13
		exit when change >= 0                                                               %will check if the cash given is enought to pay for the items
		cls
		put "You do not have enough money to pay"
		loop
		    put "If you want to return an item, enter 1"
		    put "If you want to add more money, enter 2"
		    get decision
		    exit when decision = "2" or decision = "1"                   %will ask the user how they will go about paying for the items
		    cls
		    put "You do not have enough money to pay"
		    put "Please enter a valid option"
		    put ""
		end loop
		if decision = "1" then
		    counter := counter + 1
		end if
		exit when decision = "1"
	    end loop
	    if change = 0 then
		put "You have given us perfect change"
	    elsif change > 0 then
		put "You will recieve:"
		if (change div 500) >= 1 then
		    put change div 500, " :500 dollar bill(s)"
		    change := change - (change div 500) * 500
		end if
		if (change div 100) >= 1 then
		    put change div 100, " :100 dollar bill(s)"
		    change := change - (change div 100) * 100
		end if
		if (change div 50) >= 1 then
		    put change div 50, " :50 dollar bill(s)"
		    change := change - (change div 50) * 50
		end if
		if (change div 20) >= 1 then
		    put change div 20, " :20 dollar bill(s)"
		    change := change - (change div 20) * 20
		end if
		if (change div 10) >= 1 then
		    put change div 10, " :10 dollar bill(s)"
		    change := change - (change div 10) * 10
		end if
		if (change div 5) >= 1 then
		    put change div 5, " :5 dollar bill(s)"
		    change := change - (change div 5) * 5
		end if
		if (change div 2) >= 1 then                                         %makes change from excess money that was given by the user
		    put change div 2, ":Toonie(s)"
		    change := change - (change div 2) * 2
		end if
		if (change div 1) >= 1 then
		    put change div 1, " :Loonie(s)"
		    change := change - (change div 1) * 1
		end if
		if (change div .25) >= 1 then
		    put change div .25, " :Quarter(s)"
		    change := change - (change div .25) * .25
		end if
		if (change div .1) >= 1 then
		    put change div .1, " :Dime(s)"
		    change := change - (change div .1) * .1
		end if
		if (change div .05) >= 1 then
		    put change div .05, " :Nickel(s)"
		    change := change - (change div .05) * .05
		end if
		if (change div .01) >= 1 then
		    put change div .01, " :Pennie(s)"
		    change := change - (change div .01) * .01
		end if
	    end if
	    formofpayment:="Cash"
	elsif paymenttype = "3" then
	    counter := 12
	end if
	exit when counter = 0
	cls
    end loop
put ""
put ""
put ""
put ""





    put "--------------------------------------"
    put "        Sales Receipt"
    put ""
    put ""
    put "Ms. Wun's Computer Parts Store"
    put "      100 Princess Avenue"
    put "       Tel: 416-395-3210"
    put "      ", Time.Date
    put "--------------------------------------"
    if e12345 >= 1 then
	put e12345, " Mouse(Mice): ", e12345 * 25 : 17 : 2
    end if
    if e23456 >= 1 then
	put e23456, " Keyboard(s): ", e23456 * 25 : 17 : 2
    end if
    if e54321 >= 1 then
	put e54321, " Monitor(s): ", e54321 * 100 : 18 : 2
    end if
    if e98765 >= 1 then
	put e98765, " 320 GB HD(s): ", e98765 * 50 : 16 : 2
    end if
    if e24680 >= 1 then                                                                 %makes the receipt for the sales
	put e24680, " 32 GB USB Key(s): ", e24680 * 30 : 12 : 2
    end if
    if e35791 >= 1 then
	put e35791, " Laser Printer(s): ", e35791 * 100 : 12 : 2
    end if
    if e65789 >= 1 then
	put e65789, " Microphone(s): ", e65789 * 20 : 15 : 2
    end if
    if e43543 >= 1 then
	put e43543, " i5-580 processor(s): ", e43543 * 150 : 9 : 2
    end if
    if e76543 >= 1 then
	put e76543, " MSI Video Card(s): ", e76543 * 70 : 11 : 2
    end if
    if e55544 >= 1 then
	put e55544, " Asus Motherboard(s): ", e55544 * 90 : 9 : 2
    end if
    put ""
    put "Subtotal", e12345 * 25 + e23456 * 25 + e54321 * 100 + e98765 * 50 + e24680 * 30 + e35791 * 100 + e65789 * 20 + e43543 * 150 + e76543 * 70 + e55544 * 90 : 24 : 2
    put ""
    put "HST(13%)", (e12345 * 25 + e23456 * 25 + e54321 * 100 + e98765 * 50 + e24680 * 30 + e35791 * 100 + e65789 * 20 + e43543 * 150 + e76543 * 70 + e55544 * 90) * 0.13 : 24 : 2
    put ""
    put "Total Due", (e12345 * 25 + e23456 * 25 + e54321 * 100 + e98765 * 50 + e24680 * 30 + e35791 * 100 + e65789 * 20 + e43543 * 150 + e76543 * 70 + e55544 * 90) * 1.13 : 23 : 2
    put ""
    put ""
    put "Form of payment: ", formofpayment
    put ""
    put ""
    put "              Thank You"
    put "         Please Come Again"
    put ""
    put "----------------------------------------"
    put ""
    put ""
    put ""
    put " Please type anything to finish transaction"
    get paymenttype                                                                     %will allow the user to see their receipt before the next user purhases their items
    cls                                                                                 % This includes HST(%13) subtotal, total, and the items that the user purchased
end loop

