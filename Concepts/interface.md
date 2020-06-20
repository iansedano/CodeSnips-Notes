https://stackoverflow.com/questions/2866987/what-is-the-definition-of-interface-in-object-oriented-programming

An interface is one of the more overloaded and confusing terms in development.

It is actually a concept of abstraction and encapsulation. For a given "box", it declares the "inputs" and "outputs" of that box. In the world of software, that usually means the operations that can be invoked on the box (along with arguments) and in some cases the return types of these operations.

What it does not do is define what the semantics of these operations are, although it is commonplace (and very good practice) to document them in proximity to the declaration (e.g., via comments), or to pick good naming conventions. Nevertheless, there are no guarantees that these intentions would be followed.

Here is an analogy: Take a look at your television when it is off. Its interface are the buttons it has, the various plugs, and the screen. Its semantics and behavior are that it takes inputs (e.g., cable programming) and has outputs (display on the screen, sound, etc.). However, when you look at a TV that is not plugged in, you are projecting your expected semantics into an interface. For all you know, the TV could just explode when you plug it in. However, based on its "interface" you can assume that it won't make any coffee since it doesn't have a water intake.

In object oriented programming, an interface generally defines the set of methods (or messages) that an instance of a class that has that interface could respond to.

What adds to the confusion is that in some languages, like Java, there is an actual interface with its language specific semantics. In Java, for example, it is a set of method declarations, with no implementation, but an interface also corresponds to a type and obeys various typing rules.

In other languages, like C++, you do not have interfaces. A class itself defines methods, but you could think of the interface of the class as the declarations of the non-private methods. Because of how C++ compiles, you get header files where you could have the "interface" of the class without actual implementation. You could also mimic Java interfaces with abstract classes with pure virtual functions, etc.

An interface is most certainly not a blueprint for a class. A blueprint, by one definition is a "detailed plan of action". An interface promises nothing about an action! The source of the confusion is that in most languages, if you have an interface type that defines a set of methods, the class that implements it "repeats" the same methods (but provides definition), so the interface looks like a skeleton or an outline of the class.