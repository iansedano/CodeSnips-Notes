This issue was raised before here: https://github.com/thymeleaf/thymeleaf/issues/350

The issue discusses adding default values for fragment parameters. The proposed solution involves using `th:with` to assign default values:

> 
> First option:
> 
> ```
> <div th:fragment="frag (one)" th:with="two=${two} ?: 'default'">...</div>
> ```
> 
> Which we could call in several ways (note using named parameters as in the last line we can include parameters that are not in the signature):
> 
> ```
> <div th:replace="::frag(${onevalue})">...</div>
> <div th:replace="::frag(one=${onevalue})">...</div>
> <div th:replace="::frag(one=${onevalue},two=${twovalue})">...</div>
> ```
> 
> Second option:
> 
> ```
> <div th:fragment="frag (one,two)" th:with="two=${two} ?: 'default'">...</div>
> ```
> 
> Which requires us to specify both parameters (nulling the second one if needed):
> 
> ```
> <div th:replace="::frag(${onevalue},${twovalue})">...</div>
> <div th:replace="::frag(${onevalue},${null})">...</div>
> <div th:replace="::frag(one=${onevalue},two=${twovalue})">...</div>
> <div th:replace="::frag(one=${onevalue},two=${null})">...</div>
> ```


I have been using this method to create fragments with default values and it has served me well in many contexts. That said, I've often run into issues where scope and naming conflicts occur.

Say I have a fragment with optional parameters with generic names (e.g., "title" or "message"), and these names are also used higher up in the template hierarchy, the fragment can't **distinguish between parameters explicitly passed in and those inherited from the broader scope**.

Here's a basic example:

```html
<!-- Parent template -->
<div th:with="title='Parent Title'">
    <div th:replace="fragments/fragment :: myFragment"></div>
</div>

<!-- Fragment -->
<div th:fragment="myFragment" th:with="${title} ?: 'Default Title'">
    <p th:text="${title}"></p>
</div>
```

In this example, the fragment receives "Parent Title" instead of "Default Title" when no value is provided for `title` where the fragment is called.

I'm working around this by using unique parameter names, but this results in clumsy and less fluent fragment calls.

I think it would be great to have a way to detect the scope or, even better, to have these variables behave more like function arguments, where the "defaults" are used if no argument is passed through, instead of grabbing the variable if it exists anywhere in the context.