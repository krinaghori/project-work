CPF QUESTION BANK UNIT-1 ANSWER.

1.OUTPUT

2.MAKE PAYMENT

3.0

4.(20,20)

5.PROBLEM DECOMPOSITION

6.INPUT=NUMBER OF OVERDUE DAYS , OUTPUT=FINE AMOUNT

7.INPUT=NO. OF TICKETS , PRICE PER TICKET , PROCESS=NO. OF TICKETS \* PRICE OF ONE TICKET , OUTPUT=TOTAL AMOUNT

8\. 1.READ MARKS , 2.CALCULATE TOTAL MARKS , 3.CALCULATE PERCENTAGE , 4. ASSIGN GRADE AND DISPLAY RESULT

9\.

10.75=VALID , -2=INVALID , 0=BOUNDAY TEST , 101=INVALID

11.INPUT=ENTER THE ATTENDANCE AND ASSESSMENTS

&#x20;  PROCESS=CHECK WHETHER ATTENDANCE IS >=75%

&#x20;  CHECK WHETHER ALL REQUIRED INTERNAL ASSESSMENTS ARE COMPLETED

&#x20;  IF BOTH CONDITIONS ARE TRUE=ELIGIBLE

&#x20;  OTHERWISE NOT ELIGIBLE

&#x20;  OUTPUT=ELIGIBLE FOR EXAMINATION OR NOT ELIGIBLE FOR EXAMINATION

12\. 1.READ MARKS , 2.CALCULATE TOTAL MARKS , 3.CALCULATE PERCENTAGE , 4. ASSIGN GRADE AND DISPLAY RESULT

&#x20;   JUSTIFICATION : Read Marks: You must first obtain the raw data (marks) before any computation can happen.Calculate Total: The sum of all marks is required next because percentage calculation depends directly on the total marks obtained.Calculate Percentage: Percentage is computed using the calculated total divided by the maximum possible marks.Assign Grade: Grading criteria depend directly on the calculated percentage or total score.Display Result: The final output (total, percentage, and grade) can only be shown to the user once all values have been processed.



13\. REFINEMENT 1 : GET THREE NUMBERS - COMPARE THEM STEP BY STEP - OUTPUT THE LARGEST NUMBER

&#x20;   REFINEMENT 2 : READ THE VALUES OF A , B, AND C 

&#x20;                  COMPARE A WITH B.IF A IS LARGER , COMPARE A WITH C.IF A IS GREATER THAN C THEN A IS LARGEST

&#x20;                  .IF B IS LARGER THAN A  , COMPARE B WITH C.IF B IS GREATER THAN C THEN B IS LARGEST

&#x20;                   IF NEITHER CONDITION IS MET THEN C IS THE LARGEST

&#x20;                   DISPLAY THE LARGEST VALUE FOUND

14\.

STEP	INSTRUCTION LINE	A	B	SUM	AVERAGE	OUTPUT-

1	READ A	18	-	-	-	-

2	READ B	18	24	-	-	-

3	SUM=A+B	18	24	42	-	-

4	AVERAGE=SUM/2	18	24	42	21	-

5	DISPLAY AVERAGE	18	24	42	21	21



15.LOGICAL PROBLEM: THE ORIGINAL LOGIC DOES NOT CONTAIN A DECISION MAKING STRUCTURE(IF ELSE) IT AUTOMATICALLY MARKS EVERYONE AS ELIGIBLE REGARDLESS OF THEIR AGE.

CORRECT : IF AGE>=18 THEN DISPLAY ELIGIBLE ELSE DIAPLAY NOT ELIGIBLE

EXPECTED OUTPUTS : FOR AGE=16 NOT ELIGIBLE

&#x20;                  FOR AGE=20 ELIGIBLE

16.a) Identification Input: Selected items, Quantities of each selected item, Item price list.Process: Multiply each item's quantity by its unit price, sum up the individual costs, calculate applicable taxes or discounts.Output: Total bill amount printable on a receipt. (b) Sub-processes Read item selection and quantity.Fetch item price from the menu database.Calculate individual item total (\\(\\text{Quantity} \\times \\text{Price}\\)).Accumulate individual totals into a subtotal bill.Add taxes/service fees.Generate and display the final bill. (c) Logical Sequence : receive order items-multiply quantities by unit prices-sum up subtotals-generate bill.



17.(a) problem interpretation :

&#x20;   determine the sign or classification of any given real number input relative to zero

&#x20;  (b) step wise algorithm

&#x20;  read input number N

&#x20;  if N>0 then display as positive

&#x20;  if N<0 then display as negative

&#x20;  if N=0 then display as zero

&#x20;  print the result 

&#x20;  (c) pseudocode

&#x20;  read N

&#x20;  IF N>0 then

&#x20;           display positive

&#x20;  else if N<0 then

&#x20;           display negative

&#x20;  else 

&#x20;           display zer0

&#x20;  end if

18 . (a)

&#x20;     input :  current balance , withdrawl amount

&#x20;     process : check if withdrwal amount>0 and if(currebt balance - withdrawl amount)>=1000

&#x20;     output : cash dispensation or insufficient balance error

&#x20;    (b)logical sequence

&#x20;     input withdrawlamount

&#x20;     if withdrawlamount <=0 stop transcation

&#x20;     if current balance -withdrawlamount <1000 display error and terminate

&#x20;     deduct money , update ledger,dispense cash.

&#x20;    (c) flowchart



&#x20;    (d) expected result for insufficient balance

&#x20;     message displayed transcation rejected. minimum fallback balance of 1000 required.



19\. 

|test case|input|output|testcase type|
|-|-|-|-|
|1|85|B|VALID CASE|
|2|42|F|VALID CASE|
|3|-5|ERROR|INVALID CASE|
|4|105|ERROR|INVALID CASE|
|5|0|F|BOUNDARY|
|6|60|D|BOUNDARY|
|7|90|A|BOUNDARY|
|8|100|A|BOUNDARY|



20.(a)limitation analysis

&#x20;   the logic incorrectly displau B  as the larger number when A and B are equal

&#x20;  (b)input exposing limitation

&#x20;   A=5 , B=5 (OUTPUT IS 5 but it fails to report equality)

&#x20;  (c)refined logic pusedocode

&#x20;   read A ,B

&#x20;   if A>B then

&#x20;            display A is greater

&#x20;   else if B>A then

&#x20;            display B is greater

&#x20;   else

&#x20;           display both number are equal

&#x20;   endif

&#x20;   (d)Expected results

&#x20;    unequal case : a=8,B=3 - A is greater

&#x20;    equal case : A=9,B=9- both numbers are equal



21\.  sufficiency evaluation : no these inputs are insufficient

&#x20;    justification :

&#x20;    they only test valid mid range values

&#x20;    they miss grade boundary transition

&#x20;    they fail to test extreme limits

&#x20;    they do not check invalid inputs

&#x20;    recommended additional test cases:

&#x20;    boundary values : 0,59,60,89,90,100

&#x20;    invalid values : -1,101

22\. algorithm :

&#x20;   read values A and B

&#x20;   store value of A in a temporary variable temp

&#x20;   copy value of B into A

&#x20;   copy value of temp into B

&#x20;   display updated A and B

&#x20;   pseudocode:

&#x20;   read A , B

&#x20;   temp=A

&#x20;   A=B

&#x20;   B=temp

&#x20;   display A,B

&#x20;   flowchart:



23.algorithm:

&#x20;  read A ,B and C

&#x20;  compute sum=A+B+C

&#x20;  compute avg=sum/3

&#x20;  display avg

&#x20;  pseudocode:

&#x20;  read A,B,C

&#x20;  sum = A+B+C

&#x20;  avg = sum/3

&#x20;  display avg

&#x20;  flowchart:



24.algorithm :

&#x20;  read input number N

&#x20;  if N>0 then display as positive

&#x20;  if N<0 then display as negative

&#x20;  if N=0 then display as zero

&#x20;  print the result

&#x20;  pseudocode :

&#x20;  read N

&#x20;  IF N>0 then

&#x20;           display positive

&#x20;  else if N<0 then

&#x20;           display negative

&#x20;  else

&#x20;           display zer0

&#x20;  end if

&#x20;  flowchat:

&#x20;  

25\. algorithm : 

&#x20;   read year variable Y

&#x20;   if Y is divisible by 400 it is a leap year

&#x20;   if Y is divisible by 100 but not 400 it is not a leap year

&#x20;   if Y is divisible by 4 but not 100 it is a leap year

&#x20;   otherwise it is not a leap year

&#x20;   pseudocode:

&#x20;   read Y

&#x20;   if(Y%400==0) OR (Y%4==0 AND Y%100 !=0) then

&#x20;                      display leap year

&#x20;   else

&#x20;       display not a leap year

&#x20;   endif

&#x20;   flowchat :



26\. algorithm :

&#x20;   read N

&#x20;   initialize counter count=1 and current number num=2

&#x20;   while count<=N

&#x20;   display num

&#x20;   update num = num+2

&#x20;   update count = count+1

&#x20;   pseudocode:

&#x20;   read N 

&#x20;   count=1 , num=2

&#x20;   while count <=N Do

&#x20;         display num

&#x20;         num=num+2

&#x20;         count=count+1

&#x20;   endwhile

&#x20;   flowchart



27.algorithm :

&#x20;   read N

&#x20;   initialize counter count=1 and current number num=1

&#x20;   while count<=N

&#x20;   display num

&#x20;   update num = num+2

&#x20;   update count = count+1

&#x20;   pseudocode:

&#x20;   read N

&#x20;   count=1 , num=1

&#x20;   while count <=N Do

&#x20;         display num

&#x20;         num=num+2

&#x20;         count=count+1

&#x20;   endwhile

&#x20;   flowchart



28.algorithm :

&#x20;  read overdue days input days

&#x20;  if days<=0 fine=0

&#x20;  if days<=5 fine=days\*2

&#x20;  if days<=10 fine =(5\*2)+((days-5)\*5)

&#x20;  else fine=(5\*2)+(5\*5)+((days-10)\*10)

&#x20;  display fine

&#x20;  pseudocode:

&#x20;  read days

&#x20; if days<=0 then fine=0

&#x20; else if days<=5 then fine=days\*2

&#x20; else if days<=10 then fine =10+(days-5)\*5

&#x20; else fine=35+(days-10)\*10

&#x20; endif

&#x20; display fine

&#x20; flowchart:



29\. algorithm :

&#x20;   start the process

&#x20;   read inputs : principal amount P , rate of interest R , time period T and the interest type choice (choice)

&#x20;   check the choice:

&#x20;   if choice is simple calculate interest using the simple interest formula

&#x20;           interest=P\*R\*T/100

&#x20;   if choice is compound calculate interest using the compound interest formula

&#x20;           interest =P\*(1+R/100)^T-P

&#x20;   display the calculated interest

&#x20;   end the process

&#x20;   pseudocode :

&#x20;   begin

&#x20;       read P,R,T , choice



&#x20;       if choice==simple then

&#x20;            interest=(P\*R\*T)/100

&#x20;      else if choice==compound then

&#x20;            interest=P\*((1+R/100)^T)-P

&#x20;      else 

&#x20;            display invalid choice

&#x20;            exit

&#x20;        endif

&#x20;      display interest

&#x20;   end

&#x20;    flowchat :



30.algorithm

&#x20;  start the process

&#x20;  read inputs:the seating category types and number of tickets

&#x20;  evaluate ticket category pricing:

&#x20;  if category is VIP set price=500

&#x20;  else if category is premium set price=300

&#x20;  else set standard fallback price=150

&#x20;  calculate total cost:multiply unit price by the ticket count

&#x20;                        totalamount=price\*quantity

&#x20;  display totalamount

&#x20;  end the process



&#x20;  pseudocode:

&#x20;  begin

&#x20;       read category , quantity

&#x20;     if category=VIP then

&#x20;         price=500

&#x20;     else if category=premium then

&#x20;         price=300

&#x20;     else

&#x20;          price=150

&#x20;     endif



&#x20;     totalamount=price \* quantity

&#x20;     display totalamount

&#x20; end



&#x20;  flowchart:







