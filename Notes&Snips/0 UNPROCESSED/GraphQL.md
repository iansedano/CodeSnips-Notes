Is a query language for an API

A server side runtime for executing queries by using a type system that you define for your data.

GraphQL runs on many databases.

Declarative...

query:
```
{
 hero {
 name
 }
}
```

result:
```
{
  "data": {
    "hero": {
      "name": "R2-D2"
    }
  }
}
```

so basically you build a schema and then serve it...

List of Public GraphQL APIs

https://github.com/APIs-guru/graphql-apis

https://devhints.io/graphql