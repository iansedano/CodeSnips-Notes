https://redux.js.org/tutorials/essentials/part-1-overview-concepts

> Redux is a pattern and library for managing and updating application state using events called actions

It is a limiting way to use state, just to ensure that you don't get confused by it or run into any pitfalls.

Redux is for global state.

> Redux makes it easier to understand the state in your application, and how it affects your code.

Redux is for when you have large amounts of application state, that is needed in many different places in the app.
The state is updated frequently over time
The logic to update state is complex
It is a medium to large codebase worked on by many people

https://changelog.com/posts/when-and-when-not-to-reach-for-redux

Redux was created to deal with the limitations people had found in event based state management. Imagine the user fills a form, that triggers a function that checks for certain values. Then it turns out that by filling this form they have become eligible for a discount. Also that they have gathered enough points to merit a badge. The badge also means that they have leveled up. The level now means they have more privilege. Its easy to see how this might get out of hand. This is what Redux was designed to help with.

Somewhat incidentally, it was found that Redux could help with managing global state in a React application. If many different parts of the app needed to use the same state at the same time, due to the tree like nature of react. The state might need to go all the way to the root and then back up to a leaf for another component to share the data. Using redux fixed this, in 2015-2017

With React 16.3, a new Context API came out. The purpose of Context is to fix the problem described above. So if the only reason to use Redux was to avoid passing values through many component levels, then Context solved that issue.

Redux is a generic state management tool that can be used for many things
- caching state from a server
- UI state
- other complex data management on client

Yet for any single of these things that it can do, there is probably a better tool for that thing.