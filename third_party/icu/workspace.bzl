"""Loads a lightweight subset of the ICU library for Unicode processing."""

load("//third_party:repo.bzl", "third_party_http_archive")

# Sanitize a dependency so that it works correctly from code that includes
# TensorFlow as a submodule.
def clean_dep(dep):
    return str(Label(dep))

# Things are even worse than expeced:
#
# https://storage.googleapis.com/mirror.tensorflow.org/github.com/unicode-org/icu/archive/release-62-1.tar.gz
# sha256sum: e15ffd84606323cbad5515bf9ecdf8061cc3bf80fb883b9e6aa162e485aa9761
#
# https://github.com/unicode-org/icu/archive/release-62-1.tar.gz
# sha256sum: 86b85fbf1b251d7a658de86ce5a0c8f34151027cc60b01e1b76f167379acf181
#
# Let's try with the first one, since the checksum is the old one, before I started hacking things
#
def repo():
    third_party_http_archive(
        name = "icu",
        strip_prefix = "icu-release-62-1",
        sha256 = "e15ffd84606323cbad5515bf9ecdf8061cc3bf80fb883b9e6aa162e485aa9761",
        urls = [
            "https://storage.googleapis.com/mirror.tensorflow.org/github.com/unicode-org/icu/archive/release-62-1.tar.gz",
        ],
        build_file = "//third_party/icu:BUILD.bazel",
        system_build_file = "//third_party/icu:BUILD.system",
        patch_file = clean_dep("//third_party/icu:udata.patch"),
    )
