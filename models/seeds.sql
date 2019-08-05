insert into Candidate(fullname,birthDate, birthLocation, currentLocation, 
politicalParty, occupation, website)
values 
("Donald J. Trump", "June 14, 1946 (age 73)","Queens, New York City", "Washington DC", "Republican","45th President of the US", "https://www.donaldjtrump.com"),
("Bill Weld", "July 31, 1945 (age 74)", "Smithtown, New York", "Boston, Massachussetts", "Republican", "Candidate for the president of the US in the Republican primary", "https://www.weld2020.org"),
("Kamala Harris", "October 20, 1964 (age 54)", "Oakland, California", "Berkley, California", "Democrat", "US Senator of California", "https://www.harris.senate.gov/"),
("Joe Biden", "November 20, 1942 (age 76)", "Scranton, Pennsylvania"," Delaware" ,"Democrat"," US Senator from Delaware", "https://joebiden.com/" ),
("Cory Booker", "April 27, 1969 (age 50)", "Washington, D.C.", "Newark, New Jersey", "Democrat", "US Senator from New Jersey", "https://www.booker.senate.gov/" ),
("Beto O'Rourke", "September 26, 1972 (age 46)","El Paso, Texas","Democrat", "Member of the US House of Representatives from Texas's 16th district", "https://betoorourke.com/"),
("Kirsten Gillibrand", "December 9, 1966 (age 52)","Albany, New York","Brunswick, NY","Democrat","" "US Senate of New York", "https://kirstengillibrand.com/"),
("Julian Castro","September 16, 1974 (age 44)", "San Antonio, Texas", "San Antonio, Texas","Democrat", "Candidate for the president of the US in the Democratic primary","https://www.julianforthefuture.com/"),
("Pete Buttigieg", "January 19, 1982 (age 37)","South Bend, Indiana", "South Bend, Indiana", "Democrat", "32nd Mayor of South Bend","https://peteforamerica.com/"),
("John Delaney","April 16, 1963 (age 56)", "Wood-Ridge, New Jersey","Maryland","Democrat", "Member of the US House of Representatives from Maryland's 6th district", "https://www.johnkdelaney.com/"),
("Elizabeth Warren", "June 22, 1949 (age 70)","Oklahoma City, Oklahoma","Cambridge, Massachussetts","Democrat","US Senator from Massachussetts","https://elizabethwarren.com/"),
("Mike Gravel","May 13, 1930 (age 89)","Springfield, Massachusetts","San Francisco, California", "Democrat","Candidate for the president of the US in the Democratic primary","https://www.mikegravel.org/"),
("Andrew Yang", "January 13, 1975 (age 44)", "Schenectady, New York", "Manhattan, New York City","Democrat", "Attorney/Entrepreneur", "https://www.yang2020.com/"),
("Tulsi Gabbard","April 12, 1981 (age 38)","Leloaloa, American Samoa","Hawaii", "Democrat","Member of the U.S. House of Representatives
from Hawaii's 2nd district","https://www.tulsi2020.com/"),
("Bernie Sanders","September 8, 1941 (age 77)","Brooklyn, New York City","Burlington, Vermont","Independent", "US Senator from Vermont","https://berniesanders.com/"),
("Amy Klobuchar", "May 25, 1960 (age 59)","Plymouth, Minnesota","Minnesota","Democrat","US Senator from Minnesota","https://www.klobuchar.senate.gov/public/"),
("Thomas Fahr Steyer","June 27, 1957 (age 62)","New York City, New York","San Francisco, California","Democrat","Hedge Fund Manager","https://www.tomsteyer.com/"),
("Marianne Williamson", "July 8, 1952 (age 67)", "Houston, Texas","Houson, Texas","Democrat","Author/Activist","https://www.marianne2020.com/");




USE politicdb;

INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Donald J. Trump", "June 14, 1946 (age 73)","Queens, New York City", "Washington DC", "Republican","45th President of the US", "https://www.donaldjtrump.com", "images/republicans/Trump.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Bill Weld", "July 31, 1945 (age 74)", "Smithtown, New York", "Boston, Massachussetts", "Republican", "Candidate for the president of the US in the Republican primary", "https://www.weld2020.org", "images/republicans/Weld.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Kamala Harris", "October 20, 1964 (age 54)", "Oakland, California", "Berkley, California", "Democrat", "US Senator of California", "https://www.harris.senate.gov/", "images/democrats/Harris.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Joe Biden", "November 20, 1942 (age 76)", "Scranton, Pennsylvania"," Delaware" ,"Democrat"," US Senator from Delaware", "https://joebiden.com/", "images/democrats/Biden.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Cory Booker", "April 27, 1969 (age 50)", "Washington, D.C.", "Newark, New Jersey", "Democrat", "US Senator from New Jersey", "https://www.booker.senate.gov/", "images/democrats/Booker.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Beto O'Rourke", "September 26, 1972 (age 46)","El Paso, Texas", "El Paso, Texas","Democrat", "Member of the US House of Representatives from Texas's 16th district", "https://betoorourke.com/", "images/democrats/ORourke.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Kirsten Gillibrand", "December 9, 1966 (age 52)","Albany, New York","Brunswick, NY","Democrat","" "US Senate of New York", "https://kirstengillibrand.com/", "images/democrats/Gillibrand.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Julian Castro","September 16, 1974 (age 44)", "San Antonio, Texas", "San Antonio, Texas","Democrat", "Candidate for the president of the US in the Democratic primary","https://www.julianforthefuture.com/", "images/democrats/Castro.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Pete Buttigieg", "January 19, 1982 (age 37)","South Bend, Indiana", "South Bend, Indiana", "Democrat", "32nd Mayor of South Bend","https://peteforamerica.com/", "images/democrats/Buttigieg.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("John Delaney","April 16, 1963 (age 56)", "Wood-Ridge, New Jersey","Maryland","Democrat", "Member of the US House of Representatives from Maryland's 6th district", "https://www.johnkdelaney.com/", "images/democrats/Delaney.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Elizabeth Warren", "June 22, 1949 (age 70)","Oklahoma City, Oklahoma","Cambridge, Massachussetts","Democrat","US Senator from Massachussetts","https://elizabethwarren.com/", "images/democrats/Warren.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Mike Gravel","May 13, 1930 (age 89)","Springfield, Massachusetts","San Francisco, California", "Democrat","Candidate for the president of the US in the Democratic primary","https://www.mikegravel.org/", "images/democrats/Gravel.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Andrew Yang", "January 13, 1975 (age 44)", "Schenectady, New York", "Manhattan, New York City","Democrat", "Attorney/Entrepreneur", "https://www.yang2020.com/", "images/democrats/Yang.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Tulsi Gabbard","April 12, 1981 (age 38)","Leloaloa, American Samoa","Hawaii", "Democrat","Member of the U.S. House of Representatives
from Hawaii's 2nd district","https://www.tulsi2020.com/", "images/democrats/Gabbard.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Bernie Sanders","September 8, 1941 (age 77)","Brooklyn, New York City","Burlington, Vermont","Independent", "US Senator from Vermont","https://berniesanders.com/", "images/democrats/Sanders.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Amy Klobuchar", "May 25, 1960 (age 59)","Plymouth, Minnesota","Minnesota","Democrat","US Senator from Minnesota","https://www.klobuchar.senate.gov/public/", "images/democrats/Klobuchar.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Thomas Fahr Steyer","June 27, 1957 (age 62)","New York City, New York","San Francisco, California","Democrat","Hedge Fund Manager","https://www.tomsteyer.com/", "images/democrats/Steyer.jpg");
INSERT INTO `Candidates`(`fullName`,`birthDate`,`birthLocation`, `currentLocation`,`politicalParty`,`occupation`,`website`,	`image`) VALUES ("Marianne Williamson", "July 8, 1952 (age 67)", "Houston, Texas","Houson, Texas","Democrat","Author/Activist","https://www.marianne2020.com/", "images/democrats/Williamson.jpg");


SELECT * from `Candidates`