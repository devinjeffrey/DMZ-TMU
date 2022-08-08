# DMZ Technical Assessment


## Question 1

Write pseudocode to parse a string and show, for each letter in the alphabet from a-z,
how many words there are in the string that start with each letter.

## Answer
Below is the pseudocode requested. However, there is a working JavaScript implementation in the file labelled **"1 -numberOfOccurances.js"**. This code in that file can be copy/pasted into a web inspector console for testing. 
```pseudocode
CALL getFirstLetters using str as parameter
  IF the parameter is not a string THEN 
     Alert user to input valid string
     Exit function execution
  Else
     RETURN string of the first letter of each word in the parameter
  ENDIF
CALL countOccurencesAtoZ using returned value from getFirstLetters
  RETURN object with a-z as the keys and the corresponding occurrence count as the value
```

## Question 2

Design a database (2 tables that can be joined) that stores information on members,
teams and memberships. You may include only the relevant column names and their
data types. Your design should demonstrate the following:
- Whether or not a member is active
- Whether or not a team is active
- Members’ date of birth
- The ability to programmatically get the average age, in years, of active members
in active teams (Bonus - Write the query to produce this data).


## Answer
A working schema design can be found in the file labelled **"2 -membership.sql"**. This script has been added to an online SQL database playground for testing, debugging and sharing SQL snippets for your convenience. Use this link to access it: [SQLFiddle](http://sqlfiddle.com/#!9/ef27de/1/0). 

Below is the query to produce the bonus data:

```SQL
SELECT a.teams_name as `Team Name`, AVG(a.age) as `Team Average Age` FROM (
    SELECT teams.teams_name, YEAR(NOW()) - YEAR(members.members_birth_date) AS Age
    FROM teams
    LEFT JOIN members ON teams.id = members.members_teams_id
    WHERE teams.teams_status = TRUE AND members.members_status = TRUE
) a GROUP BY  a.teams_name ORDER BY a.teams_name  DESC 
```
## Question 3

Build an HTML file with JS that contains 6 random images. Create a class for 3 of them
that gradually scales the image larger when hovered, and remains that size when
clicked. Create an assigned button for each of the last 3 images that adds a class to that
image. This class will add a coloured border, add some transparency and add some
margin. Don’t worry about where the images are on the page, as long as they don’t
move from their original position.


## Answer
The folder called **"3 -images webpage"** contains the implementation of the answer to this question. 
 
