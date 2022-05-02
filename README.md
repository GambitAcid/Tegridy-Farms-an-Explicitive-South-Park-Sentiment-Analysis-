<<<<<<< HEAD
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
=======
# Tegridy Farms Project 

Team Members: Ronnie Phillips, Rashmi Rekha, Lynne Freilich, and Nashra Khan

Project Description/Outline:

In our contemporary world of politically correctness, where general consensus of culture shuns, cancels, or otherwise finds most anything offensive, one show has remained a constant. A bright lit star in woke cultures night sky. A small group of Coloradoan 4th graders have remained banded together refusing to go down despite the ever-evolving rejection of everything deemed ‘not ok’. But are they starting to cave? This is a quantitative sentiment analysis of dialogue of the characters, jokes, and offensiveness of the TV series SouthPark. We want to do a deep dive into the words of SouthPark and see if we can pick out some underlying trends to see if one of TV’s more extreme shows has become less offensive as time has progressed. Our groups null hypothesis is that SouthPark has not changed at all in offensiveness over time even as culture has become more sensitive to the type of jokes the SouthPark built its show upon. Our hypothesis is assumed to be true and thus will be tested against the shows extreme language, usage of racial dialogue, radical ideologies, political jokes, religious jokes, and other criteria and parameters to create a sentiment analysis of the shows offensiveness. We will also look at user ratings of seasons or episodes correspond to those characters saying the most slanderous things. We will then use linear regression to determine if the show has become less offensive or more offensive over time and subsequently more or less popular. After our analysis is conducted from the collected data, we will either accept or reject our null hypothesis for the alternative hypothesis which is a.) The shows offensiveness has decreased over time or b.) The shows offensiveness has increased over time.

#### Question: Has SouthPark become less offensive over time? We will be using linear equation where M is the slope of the line to see if the slope becomes positive, negative, or neutral.

#### Null Hypothesis: SouthPark has not changed at all over time H0: M in M = 0 
#### Alternative Hypothesis 1: SouthPark has become less offensive over time HA1: M < 0 
#### Alternative Hypothesis 2: SouthPark had become more offensive over time HA2: M > 0  

Research Questions to Answer:

Is there a correlation between seasons and negative dialogue? Essentially has the show become more or less offensive over time.  
  *  Is there a correlation between later seasons having less offensive dialogue?   
  *  Is the language of SouthPark more or less foul as seasons progressed?  
  *  Which set of characters had the foulest language?   
  
### Data
Kaggle: South Park Dialogue: More than 70,000 lines of dialogue by season, episode, and character https://www.kaggle.com/datasets/tovarischsukhov/southparklines    
Screen scrapes from South Park Fandom by episode via Copy/paste to csv.file - VBA to remove scene information from dialogue 
https://southpark.fandom.com/wiki/South_Park_Archives   
Offensive Word List https://www.cs.cmu.edu/~biglou/resources/bad-words.txt 

### Python Libraries
TextBlob: sentiment analysys 
NLTK: tokenizing using TweetTokenizer
NLTK: Stopwords and Punctuation lists
Collections: Counter for wordtypes 
Matplotlib, WordClooud: visualizations

### Initial Data Gathering   
Our initial data source is Seasons 1 -18 found on Kaggle, to complete our dataset through all aired seasons we scraped additional script data from SouthParkFandom.wiki. The newly added data went through the additional steps of having season and episode information added to the lines of dialogue. The script data had embedded scene data included, this was stripped out using a VBA script and saved back to a .csv file.  The main python script was modified to look for new season information and if available perform some final cleaning and add it to the dataset. 

### Dataset processing 

The complete dataset was first tokenized and stripped of punctuation and parsed into three distinct lists for further analysis. These lists are represented below by words clouds of the 25 most frequently occurring words in each list.

  A list of all the words used in South Park ![image](https://user-images.githubusercontent.com/98897041/166171557-401205b0-4aa6-4d70-815b-27b9fc2033aa.png)  
  This list is not likely to provide much insight for our analysis as the most common words used on South Park are the most common words in the English language.
	A list of all words with standard NLTK stop words removed 
  
  A list of all words with standard NLTK stop words removed. ![image](https://user-images.githubusercontent.com/98897041/166171425-9130cfcc-f6df-4273-ad55-137121136297.png)   
  The second list provides a more representative set of words that describe the dialogue of South Park.
  
  A list of offensive words used in South Park
  ![image](https://user-images.githubusercontent.com/98897041/166171617-2b129274-e0fd-4b9b-bdec-fd32311c86ef.png)   
  The third list demonstrates there is a wide variety of offensive words that we can analyze.
  

  ### Wordlist Analysis 
  
  When we examine our first measure of offensiveness, the use of offensive language, we see that the amount of offensive language has decreased over the run of the series. The offensive language decline has not been regular, the peak use of offensive words occurred in season three and continued to decline until after season 10 when it rose again experiencing its second peak in season 13 then steadily declined through the most recent season.
  
![image](https://user-images.githubusercontent.com/98897041/166173321-61454ba4-c77e-492a-9b86-593e542dcf85.png)
![image](https://user-images.githubusercontent.com/98897041/166174446-ce1bc36a-37dd-4d2c-a89b-1d7db08abd3b.png)

#### Note: in the graphs it can been seen that season 24 had a lower offensive word count than season 25, this drop is due to an overall drop in dialogue.  Season 24 is an official season however it had only two extended episodes (because…  COVID). Season 25 returned to the 10 episode format. 
  


### Sentiment Analysis

The correlation between both factors is -0.66
![image](https://user-images.githubusercontent.com/98897041/166174473-773384a8-5dab-4c23-8534-826a127d07e8.png)

The correlation between both factors is 0.4
![image](https://user-images.githubusercontent.com/98897041/166174504-c4dd513f-f9fb-4b88-a6a5-41180817e625.png)

The correlation between both factors is -0.37
![image](https://user-images.githubusercontent.com/98897041/166259769-1482e308-4026-4537-ae9e-2e439ab5ba7d.png)
>>>>>>> 368316955aa208524782e7f6eca2355f182d5fa2

