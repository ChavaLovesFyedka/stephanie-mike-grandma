# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Template 1
Template.create(:sentence_1 => 'Dear ', 
                :sentence_2 => 'Today I ', 
                :sentence_3 => 'Tomorrow I plan to ', 
                :sentence_4 => 'Tell me more about ', 
                :sentence_5 => 'Love ')

#Sentences
#Sentence.create(:template_id => '1', :sentence_text => "Dear [[var1]],", :variable_id => '1')
#Sentence.create(:template_id => '1', :sentence_text => "Today I [[var2]].", :variable_id => '2')

#Variables
#Variable.create(:sentence_id => '1', :variable_text => "Grandma")

