class Person
  #the below is useful when you don't want to type out all of the attributes to be initialized nor the order in which the arguments are passed. you do this in case of a situation when your API is running off another site's info like goodle. What if google changes something and the order or quantity of info you get from them on a user changes? it will screw things up if you have the order of arguments laid out specifically. with the below method, it will look at each available attribute and create an initialization for it.
 attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion

 def initialize(attributes)
   attributes.each{|key, value| self.send("#{key}=", value)}
 end
end
