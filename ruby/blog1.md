# blog1.md
Understanding Instance & Class methods

In programming world its often how we think about a particular problem that causes it not to work as we expected!
For example, a method can never be an instance or a class, Instead a method is accessible via instance or class.
Lets take this instance :

class Example
  def self.class_method
    instance_method # It will throw NoMethodError
  end

  def instance_method
    # some data
  end
end

So, why did it throw an error, there is definitely a method called instance_method. What's happening here? actually ruby is searching for a class method, because ruby will read it as 'self.instance_method'. Here self is the "class" itself. Hence the error. Keep this in mind, Class methods do not have access to instance methods or instance variables. However instance methods can access both class methods and class variables. 

Now another problem when to use an instance method and when to go for a class?

Instance methods operate on an object and has access to its instance variables,
while a class method operates on a class as a whole and has no access to a particular instance's variables.





