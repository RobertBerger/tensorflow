1) create a new repo on github -> tensorflow

2) add my-scripts dir

cd tensorflow

echo "# tensorflow fork" >> README.md

git init

git add .

git commit -m "first commit"

git remote add origin git@github.com:RobertBerger/tensorflow.git

git push -u origin master

3) use my repo

mv tensorflow tensorflow.ori
git clone git@github.com:RobertBerger/tensorflow.git

4) add upstream

cd tensorflow

git remote add official-upstream https://github.com/tensorflow/tensorflow

$ git fetch official-upstream


warning: no common commits
remote: Enumerating objects: 6, done.
remote: Counting objects: 100% (6/6), done.
remote: Compressing objects: 100% (6/6), done.
remote: Total 1023807 (delta 0), reused 3 (delta 0), pack-reused 1023801
Receiving objects: 100% (1023807/1023807), 610.34 MiB | 8.65 MiB/s, done.
Resolving deltas: 100% (834608/834608), done.
From https://github.com/tensorflow/tensorflow
 * [new branch]      0.6.0                              -> official-upstream/0.6.0
 * [new branch]      cherrypick-macos-fixes-for-r2.4    -> official-upstream/cherrypick-macos-fixes-for-r2.4
 * [new branch]      ggadde-1-15-rc3-version            -> official-upstream/ggadde-1-15-rc3-version
 * [new branch]      master                             -> official-upstream/master
 * [new branch]      mm-cherry-pick-java-fixes-on-r1.15 -> official-upstream/mm-cherry-pick-java-fixes-on-r1.15
 * [new branch]      mm-cherry-pick-java-fixes-on-r2.0  -> official-upstream/mm-cherry-pick-java-fixes-on-r2.0
 * [new branch]      mm-cherry-pick-java-fixes-on-r2.1  -> official-upstream/mm-cherry-pick-java-fixes-on-r2.1
 * [new branch]      mm-cherry-pick-java-fixes-on-r2.2  -> official-upstream/mm-cherry-pick-java-fixes-on-r2.2
 * [new branch]      mm-cherry-pick-java-fixes-on-r2.3  -> official-upstream/mm-cherry-pick-java-fixes-on-r2.3
 * [new branch]      nightly                            -> official-upstream/nightly
 * [new branch]      r0.10                              -> official-upstream/r0.10
 * [new branch]      r0.11                              -> official-upstream/r0.11
 * [new branch]      r0.12                              -> official-upstream/r0.12
 * [new branch]      r0.7                               -> official-upstream/r0.7
 * [new branch]      r0.8                               -> official-upstream/r0.8
 * [new branch]      r0.9                               -> official-upstream/r0.9
 * [new branch]      r1.0                               -> official-upstream/r1.0
 * [new branch]      r1.1                               -> official-upstream/r1.1
 * [new branch]      r1.10                              -> official-upstream/r1.10
 * [new branch]      r1.11                              -> official-upstream/r1.11
...
 * [new tag]               v1.12.1                            -> v1.12.1
 * [new tag]               v1.12.2                            -> v1.12.2
 * [new tag]               v1.13.0-rc0                        -> v1.13.0-rc0
 * [new tag]               v1.13.0-rc1                        -> v1.13.0-rc1
 * [new tag]               v1.13.0-rc2                        -> v1.13.0-rc2
 * [new tag]               v1.13.1                            -> v1.13.1
 * [new tag]               v1.14.0                            -> v1.14.0
 * [new tag]               v1.14.0-rc0                        -> v1.14.0-rc0
 * [new tag]               v1.14.0-rc1                        -> v1.14.0-rc1
 * [new tag]               v1.15.0                            -> v1.15.0
 * [new tag]               v1.15.0-rc0                        -> v1.15.0-rc0
 * [new tag]               v1.15.0-rc1                        -> v1.15.0-rc1
 * [new tag]               v1.15.0-rc2                        -> v1.15.0-rc2
 * [new tag]               v1.15.0-rc3                        -> v1.15.0-rc3
 * [new tag]               v1.15.2                            -> v1.15.2
 * [new tag]               v1.15.3                            -> v1.15.3
...

$ git branch -a

* master
  remotes/official-upstream/0.6.0
  remotes/official-upstream/cherrypick-macos-fixes-for-r2.4
  remotes/official-upstream/ggadde-1-15-rc3-version
  remotes/official-upstream/master
  remotes/official-upstream/mm-cherry-pick-java-fixes-on-r1.15
  remotes/official-upstream/mm-cherry-pick-java-fixes-on-r2.0
  remotes/official-upstream/mm-cherry-pick-java-fixes-on-r2.1
  remotes/official-upstream/mm-cherry-pick-java-fixes-on-r2.2
  remotes/official-upstream/mm-cherry-pick-java-fixes-on-r2.3
  remotes/official-upstream/nightly
  remotes/official-upstream/r0.10
  remotes/official-upstream/r0.11
  remotes/official-upstream/r0.12
  remotes/official-upstream/r0.7
  remotes/official-upstream/r0.8
  remotes/official-upstream/r0.9
  remotes/official-upstream/r1.0
  remotes/official-upstream/r1.1
  remotes/official-upstream/r1.10
  remotes/official-upstream/r1.11
  remotes/official-upstream/r1.12
  remotes/official-upstream/r1.13
  remotes/official-upstream/r1.14
  remotes/official-upstream/r1.15
  remotes/official-upstream/r1.2
  remotes/official-upstream/r1.3
  remotes/official-upstream/r1.4
  remotes/official-upstream/r1.5
  remotes/official-upstream/r1.6
  remotes/official-upstream/r1.7
  remotes/official-upstream/r1.8
  remotes/official-upstream/r1.9
  remotes/official-upstream/r2.0
  remotes/official-upstream/r2.1
  remotes/official-upstream/r2.2
  remotes/official-upstream/r2.3
  remotes/official-upstream/r2.4
  remotes/official-upstream/rocm_sqrt
  remotes/origin/HEAD -> origin/master
  remotes/origin/master

5) use specific upstream branch/commit and make own branch

syntax: git fetch url-to-repo branchname:refs/remotes/origin/branchname

$ git fetch git://github.com/tensorflow/tensorflow r1.13:refs/remotes/official-upstream/r1.13

6) Update from upstream:
git co master
>> git remote -v

official-upstream       https://github.com/tensorflow/tensorflow (fetch)
official-upstream       https://github.com/tensorflow/tensorflow (push)
origin  git@github.com:RobertBerger/tensorflow.git (fetch)
origin  git@github.com:RobertBerger/tensorflow.git (push)

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
git co official-upstream/r1.13
git checkout -b r1.13+
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

