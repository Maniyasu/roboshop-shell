echo -e "\e[33mCopy Mongodb repo file\e[0m"
cp mongodb.repo /etc/yum.repos.d/mongodb.repo &>>/tmp/roboshop.log

echo -e "\e[33mInstalling MongoDB server\e[0m"
yum install mongodb-org -y &>>/tmp/roboshop.log

#modify the config file
echo -e "\e[33mRestarting MongoDB service\e[0m"
systemctl enable mongod &>>/tmp/roboshop.log
systemctl restart mongod &>>/tmp/roboshop.log