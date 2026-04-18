# Ansible Bot Config Storage

Some bots can pull their config from an external source. Such bots are configured here.

## NewsBot

The [NewsBot](https://github.com/haecker-felix/hebbot/) resides in the [Ansible Social](https://matrix.to/#/#social:ansible.com) room, and is used to help compile [The Bullhorn](https://forum.ansible.com/c/news/bullhorn/17). See [How to edit and release the Bullhorn](https://forum.ansible.com/t/how-to-edit-and-release-the-ansible-bullhorn/6543) for details on using newsbot to generate the Bullhorn.

### Using the bot

You can submit your news! It will be included in the next edition of the Bullhorn.

To do so, simply write a message in [Ansible Social](https://matrix.to/#/#social:ansible.com) and [mention](https://spec.matrix.org/v1.15/client-server-api/#user-and-room-mentions) the bot (`@newsbot:ansible.im`) anywhere in the message. Alternatively, write your post and then add a :o: (`:o:`) reaction to it.

Posts should be in Markdown and include lots of information (what, why, when) as well as links to relevant changelogs, repos, etc.

If your message mentions a project name (e.g. "AWX", "ansible-core"), the bot will automatically tag it with the matching project emoji. You can also manually add section and/or project reactions to your message from the list below:

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

The bot uses two configuration files, both stored in this directory:

* `newsbot-config.toml` — bot settings, sections, and projects.
* `newsbot-template.md` — a [minijinja](https://docs.rs/minijinja/latest/minijinja/) template that controls the rendered report layout. See the upstream [example template](https://github.com/haecker-felix/hebbot/blob/main/doc/example_config/template.md) for available variables, filters, and macros.

For general hebbot documentation see the [upstream docs](https://github.com/haecker-felix/hebbot/tree/main/doc).

After making changes here, tell the bot to reload the config from GitHub. In the [@newsbot Admin room](https://matrix.to/#/!vErCYeanUGgAiJskEy:ansible.im?via=ansible.im):

`!update-config`

You can verify your updates with `!render` as a test run.

#### Admin room commands

| Command         | Description                                                               |
| --------------- | ------------------------------------------------------------------------- |
| !about          | Shows bot version details                                                 |
| !clear          | Clears all stored news                                                    |
| !details "term" | Shows section/project details (term can be emoji or name)                 |
| !list-config    | Lists current bot configuration                                           |
| !list-projects  | Lists configured projects                                                 |
| !list-sections  | Lists configured sections                                                 |
| !render         | Creates a markdown file with the stored news                              |
| !restart        | Restarts the bot, useful when you edited the configuration                |
| !say "message"  | Sends a message in reporting room                                         |
| !status         | Shows saved messages                                                      |
| !update-config  | Updates the bot configuration by executing `update_config_command` command |

