load "Queue.rb"
load "Stack.rb"

myqueue = Queue.new
myqueue.add 1
myqueue.add 2
myqueue.add 3
myqueue.add 4
# the queue class should remove elements in the same order that the elements were added 1,2,3,4
# First in first out
puts "The first queue element removed is #{myqueue.remove}"
puts "The first queue element removed is #{myqueue.remove}"
puts "The first queue element removed is #{myqueue.remove}"
puts "The first queue element removed is #{myqueue.remove}"

mystack = Stack.new
mystack.add 1
mystack.add 2
mystack.add 3
mystack.add 4
# the stack class should remove elements in the reverse order that the elements were added 4,3,2,1
# First in last out
puts "The first stack element removed is #{mystack.remove}"
puts "The first stack element removed is #{mystack.remove}"
puts "The first stack element removed is #{mystack.remove}"
puts "The first stack element removed is #{mystack.remove}"
