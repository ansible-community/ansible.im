# Ansible Bot Config Storage

Some bots can pull their config from an external source. Such bots are configured here.

## NewsBot

The [NewsBot](https://github.com/haecker-felix/hebbot/) resides in the [Ansible Social](https://matrix.to/#/#social:ansible.com) room, and is used to help compile [The Bullhorn](https://github.com/ansible/community/wiki/News).

### Using the bot

You can submit your news! It will be included in the next edition of the Bullhorn.

To do so, simply write a message in [Ansible Social](https://matrix.to/#/#social:ansible.com) and mention the bot (`@newsbot:ansible.im`) at the
start. *Or* alternatively, write your post and then add a :o: (`:o:`) reaction to it.

Posts should be in Markdown and include lots of information (what, why, when) as well as links to relevant changelogs, repos, etc.

You can also add some information about which section and/or project the news relates to. Add reactions to your message from the list below:

#### Sections

- ⏱️: Key Dates `:stopwatch:`
- 🔈️: General News Updates `:speaker:`
- 🏆️: Major New Releases `:trophy:`
- 🪄: Collection Updates `:magic_wand:`
- 🙏: Help Wanted `:pray:`
- 🗳️: Proposals - Discuss and Vote! `:ballot_box:`
- 📅: Community events & Meetups `:date:`
- 👂️: Community Updates `:ear:`
- 💰️: Ansible is hiring `:moneybag:`

#### Projects

- 🪜: Maintainers `:ladder:`
- ⚡️: ansible-core `:zap:`
- 📦️: ansible `:package:`
- ⛏️: devtools `:pick:`
- 🐂: Antsibull tooling `:ox:`

### Use from IRC

You can still tag the bot by name (newsbot[m]) and that will work. Clearly reactions don't work in IRC, so if you need reactions applying, editors
(listed [here](https://github.com/ansible-community/ansible.im/blob/main/bots/newsbot-config.toml#L10) can do it too, just ask in the channel
and we'll help!

