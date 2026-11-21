userid=$(id -u)

if [ $userid -ne 0 ]; then
    echo "ERROR:: please execute this script with root user privilage"
    exit 1
fi

validate () {

if [ $1 -ne 0 ]; then

    echo "ERROR:: installing $2 is failure"
    exit 1
else
    echo " $2 installation is success"
fi

}
dnf list installed nginx

if [ $? -ne 0 ]; then

    dnf install nginx -y
    validate $? nginx

else
    echo "nginx is already installed skipping...."
fi    


dnf list installed mysql

if [ $? -ne 0 ]; then

    dnf install mysql -y
    validate $? mysql


else
    echo "nginx is already installed skipping...."
fi 

dnf list installed python3
if [ $? -ne 0 ]; then

    dnf install python3 -y
    validate $? python3

else
    echo "python is already installed skipping...."
fi 

