cd /data

echo "Updating config.toml..."
wget -nv -O config.toml https://raw.githubusercontent.com/ansible-community/ansible.im/main/bots/newsbot-config.toml

echo "Updating template.md..."
wget -nv -O template.md https://raw.githubusercontent.com/ansible-community/ansible.im/main/bots/newsbot-template.md

echo "Updating update_config.sh..."
wget -nv -O update_config.sh https://raw.githubusercontent.com/ansible-community/ansible.im/main/bots/update_config.sh
