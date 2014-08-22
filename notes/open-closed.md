Open/Closed Principle
=====================

Wikipedia Definition
--------------------

Software entities (classes, modules, methods, etc.) should be open for
extension, but closed for modification.

Implementation
--------------

Inheritance is a typical approach to implement open/closed classes. Uncle Bob
mentions abstract classes in his documentation, but Ruby does not have a
codified notion of abstract classes. In Ruby we think of classes as implementing
a role instead - this may be via module inclusion or just convention. The idea
of polymorphism and abstracted interfaces.

Member variables should never be known to any other class, including derived
classes.

New implementations must implement the interface, at a minimum.

- Open-closed w/r/t adding an argument to a method?

Our usage
---------

We're heading toward it with the six-pack requirement.

An interesting point, perhaps a downside: the need to implement a uniform
interface isn't exactly the best implementation for a class like BottleNumber0.
Considered in isolation, that class doesn't need to be passed a number on
initialization.
