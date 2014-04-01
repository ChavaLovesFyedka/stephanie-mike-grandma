require "prawn"

greeting = "nana"
paragraph1 = "Today I went to the movies.\n"
paragraph2 = "I miss you.\n"
closing = "Love you, Billy.\n"

image "#{Prawn::DATADIR}/public/bug.jpg", :width => 150


Prawn::Document.generate("hello.pdf") do
  text paragraph1 + paragraph2 + closing
  image
end








# Dear Grandma,
# I am writing this letter because I wanted to say thank you for the delicious cookies and awesome presents that you sent us. You make the best cookies ever, and I always love it when we get them from you.
# Remember when you made those chocolate chip cookies last Easter and we all decorated them? That was so much fun and those cookies were so yummy.
# Mom said that you are planning on coming to visit us again soon, so I shouldn’t be impatient about it. I am excited about the next time that I will see you.
# Thank you for the presents. I hope that you have a great day, and I miss you,
# Love,
# Tommy


# Dear [name]

# I hope things are well with you in [location].
# Today I [open sentence/activity].
# It was [feelings about activity].
# Tomorrow I plan to [future plans].
# What's new with [grandma thing].
# Tell me more about [asking a question].
# Have you [seen/heard of/been to] [activity / event / culture]
# I hope [future wish]
# Love [name].

