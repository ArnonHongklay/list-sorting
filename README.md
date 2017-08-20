# Clinic Listing Page

Cerrita has a growing list of clinics on the website. See Bangkok clinics  link (https://www.cerrita.com/search-form.php?l=Bangkok&t=&ct=Dental&search=advanced)  as an example. Currently, there is no option for the user to sort it in other ways like on other websites. The clinic sorting order (which clinic shows first, second, etc.) are manually arranged by a person. 

There are better ways to sort clinics to benefit the user and our business. Hence, we want you to:
1. Identify at least 4 methods that the clinic list can be sorted
2. Select one method you recommend to set as a default setting, explain your reasoning. Identify variables and factors that you included in the sorting algorithm.
3. Define how you would measure the success rate of this sorting algorithm. What metrics should be use to judge and how do you track it.

Please use the data and content made available to you from the link above and rearrange the clinics according to your recommended sorting.

Submission guidelines : Answers and explanations to questions 1-3 are to be answered in written form. The sorting method algorithm should be coded with data inputs and desired output. The solution should be submitted with all source code, optional build scripts, and a README.txt file with instructions on how to run the application (including any required dependencies).

## Hi 

### Sort list methods
1. recommended
2. price low / hight
3. rating
4. promotion / discount

### Suggestion method default
It is not easy to decide which method to use. Should be test each experiment. my suggestion first is 

```
top 1-2 display recommended / promotion
    3-5 display rating 
since 6 display created at order by desc
```
Above I split for 3 groups for 
- first group offer for system recommended might be suggestion by behavior or interest of user for best matching and benefit to system is revenue from adverts
- second group offer experience of customers review
- third group to be fair of new client

#### Explain for sample code 
I just add clinic model schema attrbutes as: 

```
    string "name"
    string "location"
    integer "rating"
    boolean "verify"
    datetime "created_at", null: false
    datetime "updated_at", null: false
    string "flag"
    string "image"
```

for first algorithm 

```
  # feature is finding flag 'recommended' and 'promotion' first 2 sequences 
  scope :feature, -> { where(flag: ['recommended', 'promotion']).limit(2) }
  
  # most_rating is finding rating first 3 sequences and exclude feature
  scope :most_rating, -> { where.not(id: feature.select(:id)).order(rating: :desc).limit(3) }

  # not_combined is inverse combined between feature and most_rating order by desc
  scope :not_combined, -> { where.not(id: feature + most_rating).order(created_at: :desc) }
    
  # combined is feature + most_rating + not_combined to display result
  scope :combined, -> { feature + most_rating + not_combined }
```

- Reason way to develop is We throw all the load on to database for ready to return with controller and display


### How to measure
Tracking with behavior when customers selection menu sort list 

such as Google analytics tracking event

```
ga('send', 'event', 'Search display', 'select', 'recommended');
ga('send', 'event', 'Search display', 'select', 'rating');
ga('send', 'event', 'Search display', 'select', 'promotion');
ga('send', 'event', 'Search display', 'select', 'discount');
ga('send', 'event', 'Search display', 'select', 'price');
```
ref: https://developers.google.com/analytics/devguides/collection/analyticsjs/events

Also sholde be tracking after selection for more effective 

demo here: https://ah-listing.herokuapp.com/
