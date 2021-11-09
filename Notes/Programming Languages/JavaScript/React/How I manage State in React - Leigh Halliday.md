[How I Manage State in React](https://www.youtube.com/watch?v=FzlurzsCW4M)

Two overarching types of State

- App State
- External Data


### App State

Keep state as low as possible

1. Local State - within one component
2. Lift State - passing between components
3. Global State - Context API

If you deal with Global State, you can use a library for that:
- MobX
- Redux
- Overmind
- Zustand
- Recoil

or just `useState`

### External Data

For external data

useQuery

- React Query
- SWR
- Apollo Client - [[GraphQL]]