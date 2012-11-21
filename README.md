# Redline Smalltalk Quickstart

Hi, this project is designed to get you up and running with [Redline Smalltalk](http://www.redline.st) with a minimum of fuss. I've created a [Vagrant](http://vagrantup.com) box that includes all the necessary components you need to run Redline Smalltalk applications. It comes with Java pre-installed, the Redline Smalltalk source code already checked out from GitHub, and paths set up so you can compile and run Redline applications right away. I hope that this will make it very easy to get started and encourage you to experiment with Redline Smalltalk.

## Installing the box

Vagrant is a virtualization system that lets you easily build and share development environments. In order to use the redline-quickstart vagrant box, you'll need to install two things. Don't worry, it will be quick and painless. In fact, I think you'll be amazed at just how quickly you'll be able to get everything set up! Please visit the [vagrant installation instructions](http://vagrantup.com/v1/docs/getting-started/index.html) and follow the first two steps ("Get VirtualBox" and "Install Vagrant").

Next, install the redline-quickstart vagrant box. Then boot it and log in, and you're off! You'll want to run ```vagrant up``` from within this git repository, because it includes a Vagrantfile with the appropriate configuration.

```bash
git clone https://github.com/patmaddox/redline-quickstart.git
cd redline-quickstart
vagrant box add redline-quickstart https://github.com/downloads/patmaddox/redline-quickstart/redline-quickstart.box
vagrant up
```

## Running the examples

Once you've booted the box, you can log in and run the examples. Vagrant does a bit of magic to link the current directory on your local machine to /vagrant on the virtual machine.

```bash
vagrant ssh  # this logs you in to the vagrant box
cd /vagrant
./examples/hello_world
# "Hello World from Redline Smalltalk."
./examples/web
# visit http://localhost:8080 in your browser to see the web example
```

Here's the hello_world example script:

```bash
#!/bin/sh
stic -s $REDLINE_HOME/examples st.redline.HelloWorld
```

You can see that it runs the redline compiler ```stic```, loading the st.redline.HelloWorld class found in the $REDLINE_HOME/examples source path. You can use a similar command to run your very own Redline Smalltalk programs.

## Updating and building Redline

The redline-quickstart vagrant box already has the redline code checked out. It's easy to update the source code and build a new version yourself.

```bash
cd /home/vagrant/redline-smalltalk
git pull
mvn clean install
```

You now have the latest version of Redline Smalltalk!

## What's next?

Now that you've got a working Redline Smalltalk environment, play around! Take a look at the example applications and make your own changes or write new programs. [Please join our community](http://www.redline.st/contribute/#community), we'd love to hear from you!

## License

redline-quickstart is Copyright (c) James Ladd & Pat Maddox, and released under the MIT License. See the LICENSE file for more information.

[Redline Smalltalk](http://www.redline.st) and [Vagrant](http://vagrantup.com) are separate projects each released under their own licenses (both are MIT at the time of this writing). Please check their respective websites for more information.



whoa this is the best project ever!