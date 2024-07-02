## CORS demystified

This is a simple repo to demonstrate CORS errors and how to deal with them.  The master branch is an example of a typical development setup where a frontend web application is trying to call a backend API.  Both the frontend and backend are running on localhost but since they are on different ports, CORS comes into play.

To run this example you will need `python` installed to use the `start.sh` script.  Otherwise, you could use something like live server for the frontend and just start the backend with `node backend/index.js`.

```BASH
bash start.sh
```

To make this example as simple and easy to understand as possible I have elected to not use any frameworks or anything fancy.
