cd /data

echo "Updating config.toml..."
wget -nv -O config.toml https://raw.githubusercontent.com/ansible-community/ansible.im/main/bots/newsbot-config.toml

echo "Updating report_template.md..."
wget -nv -O report_template.md https://raw.githubusercontent.com/ansible-community/ansible.im/main/bots/newsbot-report.md

echo "Updating section_template.md..."
wget -nv -O section_template.md https://raw.githubusercontent.com/ansible-community/ansible.im/main/bots/newsbot-section.md

echo "Updating project_template.md..."
wget -nv -O project_template.md https://raw.githubusercontent.com/ansible-community/ansible.im/main/bots/newsbot-section.md

echo "Updating update_config.sh..."
wget -nv -O update_config.sh https://raw.githubusercontent.com/ansible-community/ansible.im/main/bots/update_config.sh
