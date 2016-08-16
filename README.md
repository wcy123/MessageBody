# MessageBody

This is a demo project, how to use spring+hibernate+mysql.

It provides 3 simple REST APIs.

1. GET `/messages` return all messages
2. GET `/message/<mid>` return a message with mid
3. PUT `/message/<mid>`, create a new message with mid

```
$ curl  http://localhost:8080/messages
[]

$ curl -v -H "Content-Type: application/json" -XPUT -d '{"body":"hello there", "timestamp": 1471267785000}' http://localhost:8080/message/1
*   Trying ::1...
* Connected to localhost (::1) port 8080 (#0)
> PUT /message/1 HTTP/1.1
> Host: localhost:8080
> User-Agent: curl/7.43.0
> Accept: */*
> Content-Type: application/json
> Content-Length: 50
>
* upload completely sent off: 50 out of 50 bytes
< HTTP/1.1 201 Created
< Server: Apache-Coyote/1.1
< Location: http://localhost:8080/message/1/1
< Content-Length: 0
< Date: Tue, 16 Aug 2016 05:52:35 GMT
<
* Connection #0 to host localhost left intact

$ curl  http://localhost:8080/messages
[{"id":12,"mid":1,"body":"hello there","timestamp":1471326755000}]


```
