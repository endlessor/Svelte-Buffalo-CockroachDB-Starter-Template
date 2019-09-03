# Welcome to this modified Buffalo template - which comes preconfigured to fit a Svelte Front-End and based on CockroachDB!

Thank you for choosing Buffalo for your web development needs.

## Database Setup

It looks like you chose to set up your application using a cockroach database! Fantastic!

The first thing you need to do is open up the "database.yml" file and edit it to use the correct usernames, passwords, hosts, etc... that are appropriate for your environment.

You will also need to make sure that **you** start/install the database of your choice. Buffalo **won't** install and start cockroachdb for you.

You should install cockroachDB on your system and run it

for example you can start the db service as background like this.

	$ cockroach start --insecure --background --advertise-host=localhost

### Create Your Databases
Ok, so you've edited the "database.yml" file and started cockroachdb, now Buffalo can create the databases in that file for you:

	$ buffalo db create -a

### Migrate Your Databases
There are some migration data in the project, so you can initialize the db tables using buffalo migration command

	$ buffalo pop migrate up

### Build The Project
You can build the entire project by using buffalo build command. 

	$ buffalo build
if you want to build with assets data, you can use the following command.

	$buffalo build --e



## Starting the Application
Buffalo ships with a command that will watch your application and automatically rebuild the Go binary and any assets for you. To do that run the "buffalo dev" command:

	$ buffalo dev

If you point your browser to [http://127.0.0.1:3000](http://127.0.0.1:3000) you should see a "Hello World!" page.

**Congratulations!** You now have your Buffalo application up and running.

## What Next?

We recommend you heading over to [http://gobuffalo.io](http://gobuffalo.io) and reviewing all of the great documentation there.

Good luck!

[Powered by Buffalo](http://gobuffalo.io) [and Svelte](https://svelte.dev)
