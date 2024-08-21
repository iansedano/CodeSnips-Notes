```html
<div th:each="fruit : ${ {'apple', 'banana', 'orange'} }">
  <p th:text="${fruit}"></p>
</div>

<div th:with="fruits = ${ {'apple', 'banana', 'orange'} }">
  <div th:each="fruit : ${fruits}">
    <p th:text="${fruit}"></p>
  </div>
</div>

<th:block
  th:each="item : ${
    {
      {'Blog', '/public/blog'},
      {'Forum', '/public/forum'},
      {'Become a teacher', '/public/become-teacher'},
      {'Become a mentor', '/public/become-mentor'},
      {'Partner with us', '/public/partner-with-us'}
    }
  }"
>
  <th:block
    th:replace="~{:: dropdownLink(text=${item[0]}, href=${item[1]})}"
  ></th:block>
  >
</th:block>
```