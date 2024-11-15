# Ansible Bot Config Storage

Some bots can pull their config from an external source. Such bots are configured here.

## NewsBot

The [NewsBot](https://github.com/haecker-felix/hebbot/) resides in the [Ansible Social](https://matrix.to/#/#social:ansible.com) room, and is used to help compile [The Bullhorn](https://forum.ansible.com/c/news/bullhorn/17). See [How to edit and release the Bullhorn](https://forum.ansible.com/t/how-to-edit-and-release-the-ansible-bullhorn/6543) for details on using newsbot to generate the Bullhorn.

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
- 🛠️: Project Updates `:hammer_and_wrench:`
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
- AWX: AWX Project

### Updating newsbot

See the [newsbot documentation](https://github.com/haecker-felix/hebbot/?tab=readme-ov-file) for how to make changes. 
* Changes to `newsbot-project.md` or `newsbot-section.md` will impact every section or project.
* Add text you want to appear in every Bullhorn edition to `newsbot-section.md`.

If you've made changes here for @newsbot, you need to tell the bot to reload the config from GitHub.

In the [@newstbot Admin room](https://matrix.to/#/!vErCYeanUGgAiJskEy:ansible.im?via=ansible.im):

`!update-config`

You can verify your updates with `!render` as a test run.

You can also use `!help` for a full list of commands available in the admin room.



