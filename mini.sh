#!/bin/sh

WITHDRAW=0;
BALANCE=5000;
DEPOSIT=0;
AMOUNT=0;


echo "Select your options...
	
1.Cash Withdraw
	
2.Deposit
	
3.Check Balance"



while :

do


read INPUT_INTEGER

case $INPUT_INTEGER in 
	
		1)
	
		
echo "Enter the amount"

		
read AMOUNT
		

		
if [ "$AMOUNT" -gt "$BALANCE" ]; then
		
{
			
echo "Insufficient Funds"
		
}

		
else

		
{
			
BALANCE=$(($BALANCE - $AMOUNT));
			
echo "Your current balance is ${BALANCE}"
		
} fi
		
;;

  
	
		2)

		
			echo "Enter the amount"

		
			read AMOUNT;

		
			BALANCE=$(($AMOUNT + $BALANCE))

		
			echo "Your current balance is ${BALANCE}"
		
;;
	
		3)
		
			echo "YOur current balance is ${BALANCE}"
		
;;

	
		*)
		
			echo "Sorry, I don't Understand"
		
;;


esac

done

done
