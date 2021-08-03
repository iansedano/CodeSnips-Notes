A normal operator such as `+` works as expected on numbers.

In some languages it also works on strings. This operator in this case is _overloaded_. The name suggests that this is somehow bad. It is not. The operator will not break under the heavy load. The only thing is that it may not behave as expected in all situations. The compiler or interpreter may not recognize which type of `+` a particular instance is meant to be.

In some languages you can define how to overload certain operators with custom defined classes.

