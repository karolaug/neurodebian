family=$1
dist=$2

# basic settings
cowbuilderroot="/home/karolaug/Work/neurodebian-build"
buildplace="${cowbuilderroot}/build"

# all currently supported dists
allnddists="nd+debian-wheezy nd+ubuntu-precise nd+ubuntu-quantal"
alldists="$allnddists debian-sid"

# default is debian
aptcache="${cowbuilderroot}/debian_aptcache"
components="main contrib non-free"
mirror="http://debian.lcs.mit.edu/debian"

# overwrite necessary bits for ubuntu
if [ "${family#nd+}" = "ubuntu" ]; then
  aptcache="${cowbuilderroot}/ubuntu_aptcache"
  components="main universe multiverse"
  mirror="http://pl.archive.ubuntu.com/ubuntu"
fi

if [ ! -d $aptcache ]; then mkdir -p $aptcache; fi
