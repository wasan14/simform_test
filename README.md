Release Note - Member Games Application

Features Implemented

1. A member’s profile screen showing their number of wins, number of losses, average score and highest score,when and where it was scored, and against whom.

url - localhost:3000/members/:id

2. Interface to create and edit a member.

url for new- localhost:3000/members/new

url for edit - localhost:3000/members/:id/edit

3. A leader board screen to list the members with the top 10 average scores, for those
members who have played at least 10 matches.

url - localhost:3000/members/top_average_scorers

4. As per security is concerned we are using authenticity token and strong parameters for preventing sql injections and csfr attacks.

And for Database schema defination plz check schema.rb file

