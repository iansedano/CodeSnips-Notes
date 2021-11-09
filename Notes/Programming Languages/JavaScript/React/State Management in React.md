
State management is a complex field that will change wildly from project to project. [[Putting Tools before the Project]]. So assess what it is you need to do before jumping in.

Its a widely contested field and is in rapid change. [[premature optimization]] is something to avoid. It depends on the scope of your project. If you plan on making something very complex, then you may be better off with a library that deals with your specific need.


[[How Redux manages State]]


[[The State of State Management in React - Ben Awad]]
[[How I manage State in React - Leigh Halliday]]
[[What State Management Library Should I Use with React - Lee Robinson]]


Prop drilling is something to be avoided, lifting state up gets tedious but it solved some problems? Which problems?

Then global context supposedly solves these problems, however, then components are reaching out of themselves to a global state? Or is it that they are returning a callback and just emitting a payload, and so, can be considered "pure"?

[[Balance between preparing for complexity and getting it done]]