1) create a new repo on github -> tensorflow

2) add my-scripts dir

cd tensorflow

echo "# tensorflow fork" >> README.md

git init

git add .

git commit -m "first commit"

git remote add origin git@github.com:RobertBerger/raspberrypi-linux.git

git push -u origin master

3) use my repo

mv raspberrypi-linux raspberrypi-linux.ori
git clone git@github.com:RobertBerger/raspberrypi-linux.git

4) add upstream

cd raspberrypi-linux

git remote add official-upstream https://github.com/raspberrypi/linux

$ git fetch official-upstream

warning: no common commits
remote: Enumerating objects: 71, done.
remote: Counting objects: 100% (71/71), done.
remote: Compressing objects: 100% (54/54), done.
remote: Total 8222752 (delta 39), reused 32 (delta 17), pack-reused 8222681
Receiving objects: 100% (8222752/8222752), 2.38 GiB | 10.00 MiB/s, done.
Resolving deltas: 100% (6864021/6864021), done.
From https://github.com/raspberrypi/linux
 * [new branch]      JamesH65_axiperf_doc            -> official-upstream/JamesH65_axiperf_doc
 * [new branch]      avs2                            -> official-upstream/avs2
 * [new branch]      hdmi_audio_sink                 -> official-upstream/hdmi_audio_sink
 * [new branch]      legacy_screen_blanking_update   -> official-upstream/legacy_screen_blanking_update
 * [new branch]      linux_stable                    -> official-upstream/linux_stable
 * [new branch]      master                          -> official-upstream/master
 * [new branch]      next                            -> official-upstream/next
 * [new branch]      overscan_cursor                 -> official-upstream/overscan_cursor
 * [new branch]      pull/2638/head                  -> official-upstream/pull/2638/head
 * [new branch]      pull/2922/head                  -> official-upstream/pull/2922/head
 * [new branch]      rpi-3.10.y                      -> official-upstream/rpi-3.10.y
 * [new branch]      rpi-3.10.y-next                 -> official-upstream/rpi-3.10.y-next
 * [new branch]      rpi-3.11.y                      -> official-upstream/rpi-3.11.y
 * [new branch]      rpi-3.12.y                      -> official-upstream/rpi-3.12.y
 * [new branch]      rpi-3.13.y                      -> official-upstream/rpi-3.13.y
 * [new branch]      rpi-3.13.y-next                 -> official-upstream/rpi-3.13.y-next
...
* [new branch]      rpi-5.8.y                       -> official-upstream/rpi-5.8.y
 * [new branch]      rpi-patches                     -> official-upstream/rpi-patches
 * [new branch]      rpi-r.9.y                       -> official-upstream/rpi-r.9.y
 * [new tag]         raspberrypi-kernel_1.20180313-1 -> raspberrypi-kernel_1.20180313-1
 * [new tag]                   raspberrypi-kernel_1.20160506-1 -> raspberrypi-kernel_1.20160506-1
 * [new tag]                   raspberrypi-kernel_1.20160512-1 -> raspberrypi-kernel_1.20160512-1
 * [new tag]                   raspberrypi-kernel_1.20160523-1 -> raspberrypi-kernel_1.20160523-1
 * [new tag]                   raspberrypi-kernel_1.20160620-1 -> raspberrypi-kernel_1.20160620-1
 * [new tag]                   raspberrypi-kernel_1.20160921-1 -> raspberrypi-kernel_1.20160921-1
 * [new tag]                   raspberrypi-kernel_1.20161020-1 -> raspberrypi-kernel_1.20161020-1
...

$ git branch -a

* master
  remotes/official-upstream/rpi-5.5.y
  remotes/official-upstream/rpi-5.6.y
  remotes/official-upstream/rpi-5.7.y
  remotes/official-upstream/rpi-5.8.y

5) use specific upstream branch/commit and make own branch

syntax: git fetch url-to-repo branchname:refs/remotes/origin/branchname

$ git fetch git://github.com/raspberrypi/linux rpi-5.8.y:refs/remotes/official-upstream/rpi-5.8.y

6) Update from upstream:
git co master
>> git remote -v

official-upstream       https://github.com/raspberrypi/linux (fetch)
official-upstream       https://github.com/raspberrypi/linux (push)
origin  git@github.com:RobertBerger/raspberrypi-linux.git (fetch)
origin  git@github.com:RobertBerger/raspberrypi-linux.git (push)

>> git fetch official-upstream
remote: Counting objects: 4043, done.
remote: Compressing objects: 100% (1273/1273), done.
remote: Total 4043 (delta 3130), reused 3632 (delta 2727)
Receiving objects: 100% (4043/4043), 721.50 KiB | 402.00 KiB/s, done.
Resolving deltas: 100% (3130/3130), completed with 502 local objects.
...
---

7) My own branch:
git co master
git co official-upstream/rpi-5.8.y
git checkout -b rpi-5.8.y-2020-08-28
git co master
cd my-scripts
./push-all-to-github.sh

8) apply patches

cd meta-virtualization

git co 2019-09-09-warrior-2.7+

stg init

stg series

stg import --mail ../meta-virtualization-patches/2019-09-09-warrior-2.7+/0001-use-systemd-as-cgroup-manager-for-docker-While-it-s-.patch

import all patches

...

stg series

stg commit --all

git log

git co master

9) push to my upstream

my-scripts/push-all-to-github.sh

