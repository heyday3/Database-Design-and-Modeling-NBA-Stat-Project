# Database-Design-and-Modeling-NBA-Stat-Project

## Overview
This project was completed to explore relational databases using MySQL Workbench. Our team decided to build a database of statistics from the 2018-2019 NBA Eastern Conference season. Our work consisted of identifying an end-user need for a relational database, determining the requirements for the database, developing a deadline-oriented plan for building the database, designing the logical specifications, building and populating the database, and developing queries/views that will showcase the capabilities of the database for fulfilling the identified user needs.

## Contributors
Andrew Day, Fekedeselassie Kinfu, Frazer Workneh, Michael Belay, and Victor Lin.

## Introduction
The database we have decided to create, rooted from our fanaticism of basketball, is the
Eastern Conference for the entirety of the 2018-2019 NBA season. When first choosing this
topic, as a group we wanted to pick something that we could all get behind and have interest in
for the duration of the whole semester, all while being capable of meeting the project
requirements. Most of our group enjoys watching basketball so this was an excellent topic to
follow through with. The target audience of which we had in mind while creating the database
was NBA analysts and researchers looking to measure different stats around the Eastern
Conference. Analysts could use our design to answer a number of questions. Fellow fans of the
NBA could also use our database to compare their favorite players or coaches. Our tables include
data from games, coaches, teams, infractions, contracts, rosters, and stats. Through many
changes in our database, we have decided this was the best route to take for many reasons. The
most influential factor that led us this way was to have more one-to-many and many-to-one
relationships in our data. We found this to be manageable in terms of data handling and
producing queries that are understandable to our audience. We largely chose this because the
data for this season has already been produced and we believe it will resonate more with our
audience due to how recent it was and mostly because it is easily accessible for us.

## Logical Design
![alt text](https://raw.githubusercontent.com/heyday3/Database-Design-and-Modeling-NBA-Stat-Project/master/UPDATED_NBA-18-19_eastern_conf_erd.png)


## Changes from the original design
Our original design was to create a database on only the Washington Wizards. We
believed that the NBA had too many teams to cover so we thought it was a good idea to just
focus on a team from home. We thought it would be sufficient to solely include multiple
statistics from the Wizards’ organization. We still planned to include some elements from other
NBA teams such as former teams that players used to belong to. Our original design was also
going to cover five total seasons to provide us with a large history of the Wizards’ roster. We
also planned to look into each players’ college background and include that data in the original
design. After talking amongst our amp and each other, we came to the realization that our
original design would not be sufficient to carry on with the project. We decided to pivot our
focus and transition our database to cover a wider scope of the NBA. Discussion and review led
us to believe that the execution might be a little more complicated than expected in terms of how
we were going to link tables and whether or not we were going to have enough linking tables and
many-to-many relationships. However, our original plans were to focus on one single NBA
conference for one season, and in our case, we decided to use the Eastern Conference for the
entirety of the 2018-2019 NBA season. Furthermore, we decided to focus on starting line-ups
instead of using the entire team rosters.

## Lessons Learned
Perhaps our greatest challenge was finding common times to meet and collaborate when
we were in the initial stages of the project. Through compromise and utilizing technology, we were able to find times that we could meet and ways that we could complete our work on time.
This taught us that compromise is necessary when working in groups. Another lesson that we
took away from this project is that things don’t always go as planned, as evidenced by the fact
that we had to completely change our dataset at one point. The most notable technical challenge
that we faced was when we were writing queries at the very end. It was challenging at first, but
through collaboration and help from our designated AMP, we were able to figure them out.

## Potential Future Work
To start, since we only included the Eastern Conference, we would expand our database
of the 2018-2019 season to include the Western Conference which would total up to all 30 NBA
teams. With this, we would be able to cross-compare which conference is better and what team is
most likely to have success in the playoffs. Another potential addition would be to look into each
teams’ fanbase. More specifically, we are interested to look at data revolving around television
streams, social media followers, fan attendance at games, and overall any statistical data that
covers each team’s fanbase. This addition would allow us to look at which teams have the largest
fanbase.






