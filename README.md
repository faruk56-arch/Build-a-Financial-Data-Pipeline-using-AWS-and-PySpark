# Build a Financial Data Pipeline using AWS and PySpark

>A currency exchange rate project

This project is to populate the exchange rates of various currency keeping
**SGD** as base currency.

As of now we are using [Openexchangerates]
use this link to get acces to the API (https://openexchangerates.org/signup/free)

If you want to execute the code on your local system, you will have to Install and Configure AWS CLI. Kindly follow the below links for assistance
Installation-  https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
Configuration- https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html

##### Command to run for manual load:
```bash
python main.py --run_ts "1999-01-09" --config '{"app_id" : "0a1bsfqsfq54143be30118cee7f7164","s3_out_location":"s3://pysparkapi1/api_response/","s3_error_out_location":"s3://pysparkapi1/api_response/error/"}'
```
```
##### Docker Installation:
#Update the packages on your instance
sudo yum update -y

#Install Docker
sudo yum install docker -y

#Start the Docker Service
sudo service docker start

<!-- Add the ec2-user to the docker group so you can execute Docker commands without using sudo. -->
sudo usermod -a -G docker ec2-user

Relogin post this
```

```
##### Docker Commands:
```bash
docker build -t mudra . -f Dockerfile     
docker run -dit mudra                     
docker exec -it f39079837985 /bin/bash 
```

##### Note:

If you  are not passing the `--run_ts` config then it will take the  
current datetime.

# Connect to EC2 instance using SSH in local machine
ssh -i "pyspark-key.pem" ec2-user@ec2-51-44-15-73.eu-west-3.compute.amazonaws.com

# copy from local to ec2 instance works correctly on linux
scp -r -i pyspark-key.pem "C:\Users\SurfaceBook\Desktop\Big_Data_Project\Financial Data Pipeline\aws.txt" ec2-user@ec2-13-38-8-213.eu-west-3.compute.amazonaws.com:/home/ec2-user

# Docker build command
- docker build -t pysparkapi1 . -f Dockerfile


# Connect to docker container
docker exec -it f39079837985 /bin/bash
