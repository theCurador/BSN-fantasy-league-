# Brain Dump     
                           
>The rough version

   
*The idea to track all of your stats may sound crazy at first. But not entirely, the secret is in the sauce.*

---

 ## The Problem 
---
The problem in Puerto Rico sports is focused around  **DATA** . 

1. **Data collection** 
2. **Data processing**
3. **Data Storage** 
4. **Data presentation**


- Data is still being handled in a very manual way.
   - BSN basic discrepancies when it comes to handling athletes **basic** info:
       - **36%** of the players are missing some type of information. 
       - **24%** of the palyers in the teams have no profile image [EXHIBIT A]
       - **10%** of the league players do not have weight and height displayed [EXHIBIT A]
       - **42** players have no city to claim  and **6** of them are ageless. [EXHIBIT A]
       - **1** Unlucky player has no official poition as the oficial team position is ***"IDK"*** [EXHIBIT A]
         - the positions column suffers a blow when cleaning data. currently data is presented in 2 different tables. 
         original team Roster with *"basic"* information. the other table has all the players that participated with the team during the season. 
         some teams have more players on one table than the other. 
   - Lack of standarized information



- The data is not processed live, and in some instances the stats are submitted up to 24 hours later. 
- The clean up of the data does not exist
- There should be someone finding new ways or cleaners ways to process the data. 
---
**EXHIBIT A**
![EXHIBIT A](Web%20capture_12-12-2022_01126_www.bsnpr.com.jpeg)



# here is an idea!

- create a platform that tracks athletes stats live.
- athletes can carry their stats up to date like an automated portfolio.
- users can search for the stats of any **player/ league/ coach** 
        
        * League -> the league is the source of entry for the players information. via their certified game oficials or video capture.
        * Coach -> Users will be able to see coaches stats (i.e. winning streaks, record, comparison and such). 
        * Player -> At this level you can search any player on the database and you should be able to track all of his stats and stay up to date live. 

When creating the DB always consider the player information. The player information must be submitted by the league. The league or coaches. The live stats can only be calculated two ways for now. 
1. Create a script that does video capture, but for now that presents adding more to the plate and the plate is already full. 
2. The second one is giving the power to the league and unifying their current system. providing them an easy to use app that everyone connects to. Like UBER and UBER DRIVER. 

UBER serves the users and UBER DRIVER makes it easy for drivers to find clients.

One app simplified that allows cerified officials to ceritify via the app or webapp/


- [X] Gather the player stats of the BSN (last season)
- [ ] Establish the tables 
- [ ] Create players personal info 
- [ ] Create functional dashboards with differnt views for different types of users.  
- [ ] read code

---
# TO BE CONTINUED

an answer to the way data is presented,and eliminating the double jeopardy on players info 
is by creating a expandable roster.
the ## header ## containing team data  (team analysis, insert power bi dashboard idea)
the table content is the players, numbers, position, eff rate. so on and so on.
but when clicking a player it expands to show his basic info and a way to present more information(anything related to the player)
(insert image or websequence of concept)

Every USER must have a User ID  
(provide reasons for the userid)

