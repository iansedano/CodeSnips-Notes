https://mvnrepository.com/artifact/org.thymeleaf.extras/thymeleaf-extras-springsecurity4
https://www.thymeleaf.org/doc/articles/springsecurity.html
https://stackoverflow.com/questions/64523077/thymeleaf-spring-security-store-authentication-into-local-variable

https://docs.spring.io/spring-security/site/docs/3.0.x/reference/el-access.html

```html
<div sec:authorize="isAuthenticated()">
  This content is only shown to authenticated users.
</div>
<div sec:authorize="hasRole('ROLE_ADMIN')">
  This content is only shown to administrators.
</div>
<div sec:authorize="hasRole('ROLE_USER')">
  This content is only shown to users.
</div>

<div
  class="container"
  th:with="isUser = ${#authorization.expression('hasAuthority(''USER'')')}"
></div>

<th:block th:each="authority : ${#authentication.authorities}">
  <div th:text="${authority}"></div>
</th:block>

<body
  th:with="httpStatus=${T(org.springframework.http.HttpStatus).valueOf(#response.status)}"
>
  <h1 th:text="|${httpStatus} - ${httpStatus.reasonPhrase}|">404</h1>
  <p th:utext="${errorMessage}">Error java.lang.NullPointerException</p>
  <a href="index.html" th:href="@{/index.html}">Back to Home Page</a>
</body>

[[${#authorization.expression('hasRole(''ADMIN'')') ? "ADMIN" : "USER"}]]

<p th:text="${#authentication.principal}">anonymousUser</p>

<p th:text="${#authentication.principal}">
  com.codingnomads.cn3.Authoring.security.models.AuthUser
</p>

<p th:text="${#authentication.principal.userId}">4</p>

<p th:text="${#authentication.principal.roleName}">ROLE_SUPER</p>

<p th:text="${#authentication.principal.name}">Ian Currie</p>

<p th:text="${#authentication.principal.email}">ian@codingnomads.co</p>

<p th:text="${#authentication.principal.authorities}">[ROLE_SUPER]</p>

<p
  th:if="${#authentication.principal.roleName == ROLE_SUPER ||
    #authentication.principal.roleName == ROLE_ADMIN ||
    #authentication.principal.roleName == ROLE_MENTOR ||
    #authentication.principal.roleName == ROLE_AUTHOR}"
></p>
<p th:text="${#authentication.principal.attributes}">
  { login=iansedano, id=38072365, node_id=MDQ6VXNlcjM4MDcyMzY1,
  avatar_url=https://avatars.githubusercontent.com/u/38072365?v=4, gravatar_id=,
  url=https://api.github.com/users/iansedano,
  html_url=https://github.com/iansedano,
  followers_url=https://api.github.com/users/iansedano/followers,
  following_url=https://api.github.com/users/iansedano/following{/other_user},
  gists_url=https://api.github.com/users/iansedano/gists{/gist_id},
  starred_url=https://api.github.com/users/iansedano/starred{/owner}{/repo},
  subscriptions_url=https://api.github.com/users/iansedano/subscriptions,
  organizations_url=https://api.github.com/users/iansedano/orgs,
  repos_url=https://api.github.com/users/iansedano/repos,
  events_url=https://api.github.com/users/iansedano/events{/privacy},
  received_events_url=https://api.github.com/users/iansedano/received_events,
  type=User, site_admin=false, name=Ian Currie, company=null,
  blog=iansedano.com, location=Barcelona, Spain, email=null, hireable=null,
  bio=human being with feelings, twitter_username=iansedano, public_repos=59,
  public_gists=1, followers=27, following=33, created_at=2018-04-04T11:48:23Z,
  updated_at=2023-04-08T13:10:12Z, private_gists=2, total_private_repos=19,
  owned_private_repos=19, disk_usage=129903, collaborators=3,
  two_factor_authentication=false, plan={ name=free, space=976562499,
  collaborators=0, private_repos=10000 } }
</p>

<p th:text="${#authentication.name}">ian@codingnomads.co</p>

<p th:text="${#authentication.authenticated}">boolean (always true...)</p>

<p th:text="${#authentication.details}">
  WebAuthenticationDetails [RemoteIpAddress=0:0:0:0:0:0:0:1,
  SessionId=FD53DB0FCA4CEF3202F44783A34AF812]
</p>
```