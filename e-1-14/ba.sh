#!/bin/bash

#!/bin/bash

docker build --tag frontend ./frontend
docker build --tag backend ./backend
docker run -d --name frontend -p 3000:3000 frontend
docker run -d --name backend -p 3001:3001 backend
