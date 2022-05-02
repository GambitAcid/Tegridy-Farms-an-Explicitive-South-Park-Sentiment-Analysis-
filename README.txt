Project Title:   Tegridy Farms: Data Analysis with Tegridy 

Team Members: Ronnie Phillips, Rashmi Rekha, Lynne Freilich, and Nashra Khan

Project Description/Outline: 

In our contemporary world of politically correctness, where general consensus of culture shuns, cancels, or otherwise finds most anything offensive, one show has remained a constant. A bright lit star in woke cultures night sky.  A small group of Coloradoan 4th graders have remained banded together refusing to go down despite the ever-evolving rejection of everything deemed ‘not ok’.  But are they starting to cave? 
This is a quantitative sentiment analysis of dialogue of the characters, jokes, and offensiveness of the TV series SouthPark. We want to do a deep dive into the words of SouthPark and see if we can pick out some underlying trends to see if one of TV’s more extreme shows has become less offensive as time has progressed. 
Our groups null hypothesis is that SouthPark has not changed at all in offensiveness over time even as culture has become more sensitive to the type of jokes the SouthPark built its show upon. Our hypothesis is assumed to be true and thus will be tested against the shows extreme language, usage of racial dialogue, radical ideologies, political jokes, religious jokes, and other criteria and parameters to create a sentiment analysis of the shows offensiveness. We will also look at user ratings of seasons or episodes correspond to those characters saying the most slanderous things. We will then use linear regression to determine if the show has become less offensive or more offensive over time and subsequently more or less popular. After our analysis is conducted from the collected data, we will either accept or reject our null hypothesis for the alternative hypothesis which is a.) The shows offensiveness has decreased over time or b.) The shows offensiveness has increased over time. 

Question: Has SouthPark become less offensive over time? 
We will be using linear equation where M is the slope of the line to see if the slope becomes positive, negative, or neutral.

Null Hypothesis: SouthPark has not changed at all over time 
H0: M in M = 0
Alternative Hypothesis 1: SouthPark has become less offensive over time 
HA1: M < 0
Alternative Hypothesis 2: SouthPark had become more offensive over time 
HA2: M > 0 

Research Questions to Answer: 
1.	Is there a correlation between seasons and negative dialogue? Essentially has the show become more or less offensive over time. 
a)	Is there a correlation between later seasons are less offensive dialogue?
b)	Is the language of SouthPark more or less foul as seasons progressed? 
c)	Which set of characters had the foulest language?
d)	If we split the episodes 1-128 and 129-256 are there any changes to dialogue offensiveness or curse word frequency? 
e)	Did political references get more or less offensive over time? 

Statistical Analysis Tools:
1.	Can we look at statistical analysis of percentage of lines, average words per line, etc.?
2.	Let’s use a sentiment analysis library to sentiment a line of dialogue to determine above. 
3.	Let’s do season and sentiment regression analysis
4.	Correlation between season number and negative dialogue 
5.	Plot trends, show correlation of ratings to the amount a particular character has the most dialogue in the show
6.	Show prediction with linear regression
7.	Reject or accept null hypothesis

Datasets to be Used:
1.	Kaggle: South Park Dialogue: More than 70,000 lines of dialogue by season, episode, and character
https://www.kaggle.com/datasets/tovarischsukhov/southparklines
2.	TextBlob: To use sentiment analysis
3.	Better Profanity: Curse 
4.	NLTK 

