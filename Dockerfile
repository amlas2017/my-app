#FROM tomcat:8
# Take the war and copy to webapps of tomcat
#COPY target/*.war /usr/local/tomcat/webapps/
FROM python:2.7-slim
    WORKDIR /app
    COPY . /app
    RUN pip install -r requirements.txt
    EXPOSE 80
    ENV NOM coca
CMD ["python", "app.py"]
