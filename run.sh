#!/bin/sh
#
#    This file is part of VirtualBox.
#
#    VirtualBox is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    VirtualBox is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with VirtualBox.  If not, see <http://www.gnu.org/licenses/>.

apt-get update -y &&
    echo deb http://download.virtualbox.org/virtualbox/debian xenial contrib > /etc/apt/sources.list.d/virtual-box.list &&
    apt-get update -y &&
    apt-get install -y wget &&
    wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add - &&
    wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -
    apt-get -y remove wget &&
    echo A &&
    apt-get update -y &&
    echo B &&
    apt-get -y install virtualbox-5.1 &&
    echo C &&
    apt-get clean