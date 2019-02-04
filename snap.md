# Fost on snaps


All of the software linked from this repository is [now available as a snap](https://snapcraft.io/fost) (a [universal Linux package](https://snapcraft.io/)).

The snap can be installed using:

```
sudo snap install fost --devmode --edge
```

Commands are available under the `fost.` prefix. In order to use any that require Postgres, you will need a separate Postgres server that you can access.


## Building the snap

Building the snap needs to be done on an Ubuntu Xenial (16.04 LTS) machine, but the build tools are too old to actually compile there.

* Update the gcc compiler using the toolchain PPA:
    ```
    sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
    sudo apt-get update
    sudo apt-get install -y g++-8
    ```
* Use the new compiler by either updating replacing the soft links in `/usr/bin` for both `gcc` and `g++`, or using the `update-alternatives` command.
* Install a newer version of CMake:
    ```
    git clone git@github.com:Kitware/CMake.git
    cd CMake/
    ./bootstrap
    make
    sudo make install
    ```
    snapcraft will insist on installing the normal package anyway, so make sure the built version takes precedence.

The build of the snap itself can be done by fetching the `fost-meta` code, and in the root of the checkout performing:

```
snapcraft clean fost -s pull && \
    snapcraft snap &&
    snapcraft push --release=edge \
        fost_$(git describe --dirty)_amd64.snap
```

This will build and push the snap. The build of Boost can be avoided by using `cmake` to set up a build once. The build of the rest of the software will still happen on each snap build.
