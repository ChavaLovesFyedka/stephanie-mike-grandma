# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Template 1
# Template.create(:sentence_1 => 'Dear ', 
#                 :sentence_2 => 'Today I ', 
#                 :sentence_3 => 'Tomorrow I plan to ', 
#                 :sentence_4 => 'Tell me more about ', 
#                 :sentence_5 => 'Love ')

#Sentences
#Sentence.create(:template_id => '1', :sentence_text => "Dear [[var1]],", :variable_id => '1')
#Sentence.create(:template_id => '1', :sentence_text => "Today I [[var2]].", :variable_id => '2')

#Variables
#Variable.create(:sentence_id => '1', :variable_text => "Grandma")


#Mr President
Letter.create(:content => "Dear Mr. President, <br /><br />I'm writing to you today to express my {{emotion noun}} with how you are handling the {{political/world event}}. For {{length of time}} you have been urging the {{people of a certain country}} to {{verb}} on the {{geographical landmark}}. The time has come for you to {{verb}} with {{plural animal}}. If you could try harder at {{sport}} then the people of {{country}} would respect you like they respect {{plural noun}}. 

<br /><br />As for my part, I will organize a big {{kind of event}} to rally up support for the {{plural noun}}. We only need {{number}} {{plural noun}} and a pair of {{plural noun}}. I foresee a future {{country}} where both {{plural noun}} and {{plural noun}} {{verb}} together in harmony.
<br /><br />
Thank you for taking the time from {{verb}}ing to read my letter. I hope you are {{emotion}} enough to reply and I look forward to your {{noun}}.

All the best,<br /><br />
{{your name}}", :hidden => 1, :title => "Dear Mr. President")


# students

Letter.create(:content => "Dear students, <br/><br/>
  Make sure your {{fictional character}} lunchbox is filled with {{adjective}} {{noun}}.<br/><br/>
  Do not go to the {{adjective}} food truck near the {{kind of place}}.  The {{plural food}} they serve are fried in {{noun}} grease and are made of {{animal}} meat.<br/><br/>
  So take a sandwich made of {{plural noun}} or {{plural nouns}}.  It's much healthier!<br/><br/>
  Drink {{color}} milk instead of {{adjective}} sodas.<br/><br/>
  Sincerely, {{name}}", :hidden => 1, :title => "Dear Students")



#roommate

Letter.create(:content => "Dear roommate,<br/><br/>
  {{salutation}}!<br/><br/>
  We need to discuss some of your {{adjective}} habits.<br/><br/>
  First, please close the door when {{verb}}ing in the {{room in house}}.  And seriously you should {{verb}} at least {{number}} times a week. You smell like you just {{past-tense verb}} for {{length of time}} and then rolled around in {{plural noun}}.<br/><br/>
  Second, you must stop eating my {{plural noun}} and {{plural noun}} from the fridge.  You are welcome to borrow my {{noun}} if you ask, but you can't borrow my {{noun}}.<br/><br/>
  Next, if you keep leaving {{adjective}} dishes in the {{appliance}}, we are going to get some sort of {{animal}} infestation.<br/><br/>
  Please make sure to wear {{item of clothing}} in the {{another room in house}}.  I'm tired of seeing your {{body part}}.<br/><br/>
  Lastly, your room is emitting {{adjective}} odors like {{adjective}} {{plural noun}}.  I don't care what you do in your own {{adjective}} room, but please keep the {{another room}} {{adjective}}, or else I will have to {{verb}} you.<br/><br/>
  Also, your rent is late.<br/><br/>
  Sincerely, {{name}}
  ", :hidden => 1, :title => "Dear Roommate")



# grandma silly

Letter.create(:content => "Dear {{name of Grandma}}, <br/><br/>
  {{salutation}}!<br/><br/>
  Today I went to {{location}}.  I was with my {{adjective}} friend, {{friend's name}}.  {{same friend}} never knows how to act around {{plural noun}}.  We nearly got into a fight using {{plural noun}} and {{plural noun}}.<br/><br/>
  Anyways, how is {{Grandma activity}}?  Have you {{past-tense verb}} any {{plural noun}} yet?  I remember the time that we {{past-tense verb}} in the {{place}}.  Wasn't I {{adjective}}?<br/><br/>
  I sure do miss your {{plural food}}.  Can I get the recipe?   I want to make it for {{person}}.<br/><br/>
  Thank you for the {{plural noun}}.  I had so much fun {{verb}}ing with them while watching {{pet's name}} {{verb}} in the backyard.<br/><br/>
  I can't wait to {{verb}} it up with you soon!  I miss your {{personality trait}}. <br/><br/>
  Love, {{name}}", :hidden => 1, :title => "Dear Grandma")


# nice Grandma letter
Letter.create(:content => "Dear {{name of Grandma}}, <br/><br/>
  {{salutation}}! <br/><br/>
  I hope things are well with you in {{Grandma's location}}.<br/><br/>
  Guess what I did today -- {{something you did today}}.  It was {{adjective describing activity}}.  Recently, I {{past-tense activity or achievement}}.  Tomorrow, I plan to {{activity}}.<br/><br/>
  What's new with {{grandma's favorite activity}}?<br/><br/>
  Can you tell me more about {{something before you were born}}?<br/><br/>
  Have you heard of {{current event, movie, book, TV show}}?  I think that {{your opinion}}, and I wanted to know  your thoughts about it.<br/><br/>
  I miss your {{favorite Grandma recipe}}, and I hope we can {{favorite activity with Grandma}} soon.<br/><br/>
  Love, {{name}}", :hidden => 0, :title => "Dear Grandma (nice)")


# teacher
Letter.create(:content => "Dear {{Mrs., Mr., Ms., Miss}} {{name of teacher}}, <br/><br/>
  I'm sorry my {{noun}} isn't ready today, but I assure you I am not to blame.  This morning, a creepy {{something alive}} snuck into my {{room in house}} where I keep my {{plural noun}} and books.  I grabbed my {{noun}} and threw it at the {{same alive thing}} but I missed, and it grabbed my homework and {{past-tense verb}} away.  I yelled '{{exclamation}}' at it, but that didn't help.  So I quickly put {{favorite song}} on and turned the volume way up, hoping to {{verb}} it away.<br/><br/>
  Instead, it started to {{verb}} around like it was dancing!  It hopped so wildly, it knocked my {{noun}} off the coffee table and it ruined my homework.<br/><br/>
  So, that's why my homework isn't ready.<br/><br/>,
  Also, I think you're the {{superlative adjective}} teacher <br/><br/> in all of {{location}}.<br/><br/>
  You make learning {{adjective}}, especially in {{noun or verb}} class.<br/><br/>
  School is {{adjective}} because of you!<br/><br/>
  Sincerely, {{name}}", :hidden => 1, :title => "Dear Teacher")