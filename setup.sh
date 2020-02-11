#!/bin/sh

newcontainer="$(buildah from scratch)"
mountpoint="$(buildah mount $newcontainer)"

zypper --installroot $mountpoint install --no-recommends -y xonotic-server

buildah run $newcontainer mkdir -p /root/.xonotic/data
buildah config --cmd /usr/bin/xonotic-dedicated $newcontainer
buildah umount $newcontainer
buildah commit $newcontainer xonotic-server

exit 0