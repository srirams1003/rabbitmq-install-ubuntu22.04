### Instructions to install RabbitMQ on Ubuntu 22.04

- `chmod +x install_rabbit.sh`
- Run the script `./install_rabbit.sh`

#### Once installed successfully, you can use the commands below to check out the current status of your rabbitmq

- `systemctl status rabbitmq-server`
- `sudo rabbitmqctl list_users`
  - Should now see guest as admin
- `sudo rabbitmqctl list_vhosts`
  - Should see /
- `sudo rabbitmqctl list_permissions -p /`
  - Should see list of permissions for /

### Now you can run your Python Files

- `python receive.py`
- `python send.py`
