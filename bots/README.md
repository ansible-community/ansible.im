# Ansible Bot Config Storage

Some bots can pull their config from an external source. Souch bots are configured here.

## NewsBot

The NewsBot resides in the [Ansible Social](https://matrix.to/#/#social:ansible.com) room, and is used to help compile the Bullhorn.

### Using the bot

You can submit your news! It will be included in the next edition of the Bullhorn.

To do so, simply write a message in [Ansible Social](https://matrix.to/#/#social:ansible.com) and mention the bot (@newsbot:ansible.im) at the#
start. *Or* alternatively, write your post and then add a :o: (`:o:`) reaction to it.

You can also add some information about which section and/or project the news relates to. Add reactions to your message from the list below:

#### Sections

- ⏱️: Key Dates
- 🔈️: General News Updates
- 🏆️: Major New Releases
- 🪄: Collection Updates
- 👂️: Community Updates
- 💰️: The Ansible Team Is Hiring

#### Projects

- 🪜: Maintainers - Maintainers help to run the community! (https://github.com/ansible-community)
- ⚡️: Ansible-Core - **Ansible Core** is minimal package containing the base engine, modules, and plugins (https://github.com/ansible/ansible)
- 📦️: Ansible - **Ansible** is the full-fat package containing Ansible Core & the Community Collections (https://github.com/ansible-collections)

### Use from IRC

You can still tag the bot by name (newsbot[m]) and that will work. Clearly reactions don't work in IRC, so if you need reactions applying, editors
(listed [here](https://github.com/ansible-community/ansible.im/blob/main/bots/newsbot-config.toml#L10) can do it too, just ask in the channel
and we'll help!

