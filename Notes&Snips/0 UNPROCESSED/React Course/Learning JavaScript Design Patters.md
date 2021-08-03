Author: Addy Osmani
Date: 2012
Subtitle: A JavaScript and jQuery Developer's Guide

Patters as tools to help code in a more structured and organized way.

[[Design pattern of organizing files]]

How jQuery and much of JavaScript is organized under the ==facade== design pattern. A simplified set of abstracted interfaces `$el.animate()` to interact with complex bodies of code

Patterns should
- Solve a particular problem
- Solution to the problem cannot be obvious
- It must be proven
- It must describe a relationship

If it is not a full blown pattern it can be considered a proto pattern

Patterns are traditionally presented in the form of a rule
- context
- a system of forces that arise in the context
- a configuration that allows the forces to resolve themselves

Types of design pattern
- Creational, handling and controlling object creation. Eg. Constructor, Factory, Abstract, Singleton, Builder
- Structural, object composition, simple ways to realize relationships, so that when one part of the system changes, not everywhere has to change with it. Eg. Decorator, Facade, Flyweight, Adapter, Proxy
- Behavioural, improve and streamline the communication between objects. Eg. Iterator, Mediator, Observer, Visitor