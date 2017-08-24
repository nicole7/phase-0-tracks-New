What are some common HTTP status codes?
- 404 Not Found : Webpage could not be found on the server. 	  Client-side error - either the page was removed, moved or 	  typed in wrong
- 403 Forbidden : Accessing the page or resource you were trying 
  to reach is absolutely forbidden for some reason. 
- 500 Internal Server Error : Something has gone wrong on the 
  website's server, but the server could not be more specific on what the exact problem is
- 503 Service Unavailable : Website's server is simply not 
  available right now
- 504 Gateway Timeout : One server did not receive a timely 
  response from another server that it was accessing while attempting to load the web page or fill another request by the browser

 What is the difference between a GET request and a POST request? When might each be used?
 - GET : method that retrieves or gets "something" on a webpage 
   (all required data is requested for the URL)
 - POST : method that submits data to be processed to a specified
   resource (input from user is sent to resource)

 What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
 - Cookie : Small piece of data sent from a website and stored 
   on the user's computer by the user's web browser while the user is browsing. Cookie is passed as a HTTP header because it's retrieving information/requests (example: user login information)