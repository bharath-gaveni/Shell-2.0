userid=$(id -u)

if [ $userid -ne 0 ]; then
    echo "ERROR:: please execute this script with root user privilage"
    exit 1
fi
dnf list installed nginx

if [ $? -ne 0 ]; then

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "ERROR:: installing nginx is failure"
    exit 1
else
    echo "nginx installation is success"
fi
else
    echo "nginx is already installed skipping...."
fi    


dnf list installed mysql

if [ $? -ne 0 ]; then

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: installing mysql is failure"
    exit 1
else
    echo "mysql installation is success"
fi
else
    echo "nginx is already installed skipping...."
fi 

dnf list installed python3
if [ $? -ne 0 ]; then

dnf install python3 -y

if [ $? -ne 0 ]; then
    echo "ERROR:: installing python is failure"
    exit 1
else
    echo "python installation is success"
fi
else
    echo "nginx is already installed skipping...."
fi 

