
```html
<div
  th:fragment="progressBarEasedOut(value, class)"
  class="h-2 rounded-full bg-blue-100"
  role="progressbar"
  aria-valuemin="0"
  aria-valuemax="100"
  aria-label="Your progress"
  th:classappend="${class}"
  th:with="tweenedValue=${
    (T(java.lang.Math).sin(((value / 100.0) * T(java.lang.Math).PI) / 2)) * 100
  }"
>
  <div
    class="h-full rounded-full bg-primary"
    th:aria-valuenow="${tweenedValue}"
    th:style="|width:${tweenedValue}%;|"
  ></div>
</div>
```
