import requests
import json


name = requests.get("https://archlinux.org/packages/search/json/?name=linux")
name.raise_for_status()
pkgver = json.loads(name.text).get("results")[0].get("pkgver")
pkgrel = json.loads(name.text).get("results")[0].get("pkgrel")
versions = pkgver[:4]
if versions[-1] == ".":
    versions = pkgver[:3]
main = versions[0]+".x"

with open("PKGBUILD") as f:
    lists = f.readlines()

for x in lists:
    if "pkgver" in x:
        num = lists.index(x)
        break
lists.remove(x)
lists.insert(num, "pkgver=" + pkgver + "\n")
for x in lists:
    if "pkgrel" in x:
        num = lists.index(x)
        break
lists.remove(x)
lists.insert(num, "pkgrel=" + pkgrel + "\n")
for x in lists:
    if "version" in x:
        num = lists.index(x)
        break
lists.remove(x)
lists.insert(num, "_version=" + versions + "\n")
for x in lists:
    if "main" in x:
        num = lists.index(x)
        break
lists.remove(x)
lists.insert(num, "_main=" + main + "\n")

with open("PKGBUILD", "w") as f:
    for i in lists:
        f.write(i)

print("done")
