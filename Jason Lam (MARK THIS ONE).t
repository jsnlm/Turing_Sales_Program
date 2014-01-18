/*This program will perform transactions for the products
-Allows the user to scan items
-will record what the user has scanned
-will allow the user to refund items if they don't wan it of if hey can't afford it
-can accept credit card and cash
-will continue to ask the user for an input until it is valid

-will output the recete which contains Number of each item that was bought
-the date and time
-the form of payment for the items
-will show what the user has bought while the user is scanning items so that they user can keep track of how many items he has bought


To be submitted to Ms. wun
Written by Jason Lam
Date: feb 4, 2011
Name of program: cash register program

 */
setscreen ("graphics:600;1000")

var decision : string    % is the variable that will change depending on if the user wants to add moremoney when paying with cash, or if they want to refund items
var counter : int    % variable if the user wants to refund an item
var card : int    % variable for the credit card password if the user is using their credit card as a form of payment
var paymenttype : string    % variable of how the user wants to pay for the items scanned( the choices are cash, credit, or to refund an item)
var tmoney : real    % if the user is using cash as the form of payment for the scannditems, it is variable of total cash that the user will be using to pay for hte items
var change : real    % variable of the change given back to the user if they are paying with cash
var product : string    % variable for the product code of the item scanned



var e12345 : int    % variable of # of mice
var e23456 : int    % variable of # ofkeyboards
var e54321 : int    % variable of # ofMonitor
var e98765 : int    % variable of # of320 Gb HD
var e24680 : int    % variable of # of32 GB USB Key
var e35791 : int    % variable of # ofLaser Printer
var e65789 : int    % variable of # of Microphone
var e43543 : int    % variable of # ofi5-580 processor
var e76543 : int    % variable of # ofMSI Video Card
var e55544 : int    % variable of # ofAsus Motherboard(s)

var e10101 : int    % Will see if the user wanted to refund an item


var formofpayment:string    % this variable will keep track of what type form of payment the user has used which will be displayed on the recete

var theDateTime, theDate, theTime : string
theDateTime := Time.Date                        % this will help declare the date and the time
theDate := theDateTime (1 .. 9)
theTime := theDateTime (11 .. *)





loop                    % this is the loop that will allow the user to do another transaction after a previous transaction
    e12345 := 0
    e23456 := 0
    e54321 := 0
    e98765 := 0
    e24680 := 0
    e35791 := 0
    e65789 := 0
    e43543 := 0
    e76543 := 0
    e55544 := 0 %Will restart all the variables to 0 because this will be the start of each purchase and transaction, therefore, the user has not bought any items and theses variables must be at 0
    loop        % this variable will allow the user to restart the purchasing process if they have not scanned the items they wanted to, or if the user wants to refund items
	e10101 := 0             %will restart the refund variable so that it will not refund through each loop
	counter := 0            % will restart the variable that will determine if the program will reloop itself so that it won't automatically restart the loop
	paymenttype:="0"        % will restart this variable to a variable other than 1, 2, or 3 so that the payment type will not be decided prior to when the user makes that decision
	loop                    % will allow the user to scan more items, after scanning items
	    if e12345 > 0 or e23456 > 0 or e54321 > 0 or e98765 > 0 or e24680 > 0 or e35791 > 0 or e65789 > 0 or e43543 > 0 or e76543 > 0 or e55544 > 0 or e10101 > 0 then  %will display a line if the user has bought anything
		put "--------------------------------------------------------------"
	    end if
	    
	    % This section will -------------------------------------------  display all the items that the user has scanned          
	    
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
		put e35791, " :Laser Printer(s)"   
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

	     % This section will ------------------------------------------- display the special bar codes which will allow the user to refund items or to end trans action

	    put "-----------------------------------------------------"
	    put "Scan the code on the bottom labeled 10101 to stop buying items"
	    put "Scan the code labeled 00000 to refund an item"                             % will give instructions of how to refund and how to finsih buying items
	    put ""
	    put "Total Due", (e12345 * 24.99 + e23456 * 61.99 + e54321 * 164.99 + e98765 * 54.99 + e24680 * 99.97 + e35791 * 249.99 + e65789 * 45.99 + e43543 * 266+ e76543 * 159.97 + e55544 * 78.97) * 1.13 : 20 : 2
	    put "-----------------------------------------------------"

	    
	     % This section will -------------------------------------------  continue to ask the user for a barcode until it is a valid one            
	    
	    
	    loop
		put "Please scan the item you wish to purchase"
		get product
		exit when product = "12345" or product = "23456" or product = "54321" or product = "98765" or product = "24680" or product = "35791" or product = "65789" or product = "43543" or
		    product =
		    "76543" or product = "55544" or product = "10101" or product = "00000"
		put "That is an invaild product"
	    end loop
	    
	     % This section will ------------------------------------------- determine what item has been scanned and record the number of each product that has been scanned

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
		    e35791 := e35791 + 1
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

		% This section will -------------------------------------------  continue to ask the user for the barcode they want to refund until it is a valid one
		
		    loop
			put "Please Scan the product you want to refund"
			get product
			exit when product = "12345" or product = "23456" or product = "54321" or product = "98765" or product = "24680" or product = "35791" or product = "65789" or product = "43543"
			    or                                          %this will ask the user what they are going to refund. This will also check if the item that has been bought is a valid item.
			    product =
			    "76543" or product = "55544" or product = "10101" or product = "00000"
			put "That is an invaild product"                
		    end loop

		    % This section will -------------------------------------------  record what the user has scanned and then make the necessary change with the variables 
		    % This section will -------------------------------------------  also tell the user if the item they want to refund has already been purchased, if so, it will display message saying that the refund for that item would be impossible 
		    
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
				delay (1000)                                              
			    else
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
	    exit when e10101 = 1                                % will check the variable that tells the program to loop the purchasing loop or not, if the variable is activated by the user scanning the "end transaction barcode", then it will stop the loop to let the user continue with the rest of the transaction 
	end loop




	% This section will -------------------------------------------  contain the rest of the transaction process such as paying for the scned items with either cash or credit. This section also cntains the change making machine, and check if the user wants to refund items



	
	
	
	% This section will ------------------------------------------- how the user will pay for the items they scanned, it will also re-ask the question until a valid input is inputed. the options available are to pay with cash, credit or to refund an item if they don't have enough money
	
	put "Total amount to be paid$", (e12345 * 24.99 + e23456 * 61.99 + e54321 * 164.99 + e98765 * 54.99 + e24680 * 99.97 + e35791 * 249.99 + e65789 * 45.99 + e43543 * 266+ e76543 * 159.97 + e55544 * 78.97) * 1.13 : 0 : 2
	put ""
	put "Will you be paying with cash or credit"
	loop
	    exit when paymenttype = "1" or paymenttype = "2" or paymenttype = "3"
	    put "If you are paying with cash, enter 1"
	    put "If you are paying with credit, enter 2"
	    put "If you don't have enough money to pay, please enter 3 to refund an item"
	    get paymenttype
	    cls

	    put "Total amount to be paid  $", (e12345 * 24.99 + e23456 * 61.99 + e54321 * 164.99 + e98765 * 54.99 + e24680 * 99.97 + e35791 * 249.99 + e65789 * 45.99 + e43543 * 266+ e76543 * 159.97 + e55544 * 78.97) * 1.13 : 0 : 2
	    put ""
	    put "That is an invalid input"
	    put "please enter a valid option"
	    put ""
	    put ""
	end loop
	cls
	
	
	% This section will ------------------------------------------- will ask the user to swipe the card  because it is assuming that the user  wants to pay with credit
	
	
	if paymenttype = "2" then
	    put "Total amount to be paid  $", (e12345 * 24.99 + e23456 * 61.99 + e54321 * 164.99 + e98765 * 54.99 + e24680 * 99.97 + e35791 * 249.99 + e65789 * 45.99 + e43543 * 266+ e76543 * 159.97 + e55544 * 78.97) * 1.13 : 0 :2
	    put ""
	    put "Please swipe scan your card and enter your pin code"
	    get card                                                                                        %will ask the user to swipe their card and enter their bank password
	    put "You have scanned your card and paid for the items"
	    put ""
	    put ""
	    formofpayment:="credit"                             %will change the variable of form of payment so that on the receipt, so the user will know that the form of payment they used to pay for the items was credit
	    
	    
	% This section will ------------------------------------------- will ask the user how much money they are going to pay in cash because they seected the option of paying with cash. The program will keep on asking for the amount of money until it is valid
	    
	    
	    
	elsif paymenttype = "1" then
	    loop                        % will keep on asking for more moeny to pay for the items of the user has not paid enough
		put "Total amount to be paid  $", (e12345 * 24.99 + e23456 * 61.99 + e54321 * 164.99 + e98765 * 54.99 + e24680 * 99.97 + e35791 * 249.99 + e65789 * 45.99 + e43543 * 266+ e76543 * 159.97 + e55544 * 78.97) * 1.13 : 0 :2
		put ""
		put "Please enter the total money you are going to pay"
		put "(This will tell us how much change to give back)"
		get tmoney
		change := tmoney - (e12345 * 24.99 + e23456 * 61.99 + e54321 * 164.99 + e98765 * 54.99 + e24680 * 99.97 + e35791 * 249.99 + e65789 * 45.99 + e43543 * 266+ e76543 * 159.97 + e55544 * 78.97) * 1.13
		exit when change >= 0                                                               %will check if the cash given is enought to pay for the items
		cls
		put "You do not have enough money to pay"
		
		% This section will ------------------------------------------- will ask the user how they are going to pay for the items. They have the choice of returning an item or adding more cash to pay for the items
		
		loop                    % Will check if the wants to return items or if they want to add more money to pay for the items. This loop will keep on asking the user for an option until it is valid
		    
		    put "If you want to return an item, enter 1"
		    put "If you want to add more money, enter 2"
		    get decision
		    exit when decision = "2" or decision = "1"
		    cls
		    put "You do not have enough money to pay"
		    put "Please enter a valid option"
		    put ""
		end loop
		if decision = "1" then
		    counter := counter + 1                                      %will change the variable so that the user will be able to refund items
		end if
		exit when decision = "1"
	    end loop
	    
	    % This section will ------------------------------------------- pay out the hange when the user has given enough money to pay for the items
	    
	    
	    
	    if change = 0 then                                          %will tell the user that the user has given the machine perfect change
		put "You have given us perfect change"
	    elsif change > 0 then                                       %makes change from excess money that was given by the user
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
		if (change div 2) >= 1 then                                         
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
	    formofpayment:="Cash"                                           %will change the variable of form of payment to cash so that on the receipt, the user will know that the form of payment they used to pay for the items was cash
	elsif paymenttype = "3" then
	    counter := 12
	end if
	exit when counter = 0                                       % This will help the user exit the program if they had paid for their purcahse. otherwise, it assumes that the user wants to refund items or add more items so that they can afford to pay for the items they bought        
	cls
    end loop                                                        
put ""
put ""
put ""
put ""


% This section will ------------------------------------------- diplay the receipt for the trans action, it will display information about the store, # of items bought, Price of ach item bought, subtotal, total, HST, and form of payment.


    put "--------------------------------------"
    put "        Sales Receipt"
    put ""
    put ""
    put "Ms. Wun's Computer Parts Store"                                                %Shows the information of the store and the time and date of purchase, name of store, 
    put "      100 Princess Avenue"
    put "       Tel: 416-395-3210"
    put "      ", Time.Date
    put "--------------------------------------"
    if e12345 >= 1 then
	put e12345, " Mouse(Mice): ", e12345 * 24.99 : 17 : 2
    end if
    if e23456 >= 1 then
	put e23456, " Keyboard(s): ", e23456 * 61.99 : 17 : 2
    end if
    if e54321 >= 1 then
	put e54321, " Monitor(s): ", e54321 * 164.99 : 18 : 2
    end if
    if e98765 >= 1 then
	put e98765, " 320 GB HD(s): ", e98765 * 54.99 : 16 : 2
    end if
    if e24680 >= 1 then                                                                 %The part of the receipt that shows what the user has bought and their prices
	put e24680, " 32 GB USB Key(s): ", e24680 * 99.97 : 12 : 2
    end if
    if e35791 >= 1 then
	put e35791, " Laser Printer(s): ", e35791 * 249.99 : 12 : 2
    end if
    if e65789 >= 1 then
	put e65789, " Microphone(s): ", e65789 * 45.99 : 15 : 2
    end if
    if e43543 >= 1 then
	put e43543, " i5-580 processor(s): ", e43543 * 266 : 9 : 2
    end if
    if e76543 >= 1 then
	put e76543, " MSI Video Card(s): ", e76543 * 159.97 : 11 : 2
    end if
    if e55544 >= 1 then
	put e55544, " Asus Motherboard(s): ", e55544 * 78.97 : 9 : 2
    end if
    put ""
    put "Subtotal", e12345 * 24.99 + e23456 * 61.99 + e54321 * 164.99 + e98765 * 54.99 + e24680 * 99.97 + e35791 * 249.99 + e65789 * 45.99 + e43543 * 266+ e76543 * 159.97 + e55544 * 78.97 : 24 : 2
    put ""
    put "HST(13%)", (e12345 * 24.99 + e23456 * 61.99 + e54321 * 164.99 + e98765 * 54.99 + e24680 * 99.97 + e35791 * 249.99 + e65789 * 45.99 + e43543 * 266+ e76543 * 159.97 + e55544 * 78.97) * 0.13 : 24 : 2   % shows the subtotal, tax, and total of the purchase
    put ""
    put "Total Due", (e12345 * 24.99 + e23456 * 61.99 + e54321 * 164.99 + e98765 * 54.99 + e24680 * 99.97 + e35791 * 249.99 + e65789 * 45.99 + e43543 * 266+ e76543 * 159.97 + e55544 * 78.97) * 1.13 : 23 : 2
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
    
    %will allow the user to see their receipt before the next user purhases their items
    % This includes HST(%13) subtotal, total, and the items that the user purchased
    
    
    put " Please type anything to finish transaction"
    
    % Since I am asking for a string for the user to finish transaction, it allows the user to type anything to finish the transaction 
    % it also allows the user to look at their receipt before finishing the entire transaction
    
    get paymenttype                                % since the variable payment type is a string, the user can enter anything they want. Since this is also a get statement, it will give the user time to look at the receipt before entering "paymenttype"
						    % By entering the variable, it will finally go to the next line which is to finish the loop                                  
    cls                                                                                 
end loop                                            % this loop will allow another user to do their transactions without re-opening the program which will improve efficientcy

