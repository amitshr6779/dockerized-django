1. build and run your mysql db
   
   USE Dockerfile_db a
   docker build -t django_sql .   
   docker run --name app_db -d django_sql

2. build your django app

   USE Dockerfile
   docker build -t  django_app  .
      

3. link db and run your djangoo app
    
   docker run --link app_db:django_sql  -p 8000:8000 django_ap


Note: 
In entrypoint.sh file  make  python manage.py  migrate comment
