<!--
    This file is part of virtualbox.

    virtualbox is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    virtualbox is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with virtualbox.  If not, see <http://www.gnu.org/licenses/>.
-->

# virtualbox

## Usage

```
docker \
    run \
    --interactive \
    --tty \
    --rm \
    --volume /dev/vboxdrv:/dev/vboxdrv:ro \
    --env DISPLAY \
    --volume /tmp/.X11-unix:/tmp/.X11-unix:ro \
    tidyrailroad/virtualbox:0.0.0
```

Because this depends on host resources, this will probably only work with an ubuntu 16.04 host with VirtualBox installed.
See run.sh for instruction on how to install VirtualBox on the host.

It is necessary to set DISPLAY and share /tmp/.X11-unix for a GUI display, but if you want to run headless, then that is not necessary.