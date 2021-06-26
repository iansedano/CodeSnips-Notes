```python
file = open('helloworld.html', 'wb')


htmlTrippleQuoted = """
<html>
    <head>
        <script>
             function f1() {
                 return "hello";
             }
        </script>
        <style>
            div {
                background-color: #FFFF00;
            }
        </style>
    </head>
    <body>
        <div id='title'>
            Hello World!
        </div>
    </body>
</html>"""

file.write(htmlTrippleQuoted.encode())
file.close


```