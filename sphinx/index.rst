***********************************************
 Welcome to the Debian Neuroscience Repository
***********************************************

This repository provides mostly neuroscience-related packages to be used on
Debian systems (or Debian-derivatives like Ubuntu). It contains both unofficial
or prospective packages which are not (yet) available from the main Debian
archive, as well backported or simply rebuilt packages also available
elsewhere. Please see the :ref:`faq` for more information about the goals of
this project.

This service is provided "as is". There is no guarantee that a package
works as expected, so use them at your own risk. They might kill your
system (although that is rather unlikely). You've been warned!

The repository contains both neuroscience-related packages, as well as general
purpose software which is necessary to resolve dependencies, or such that is
simply useful in the neuroscience context. All featured neuroscience software
packages are available from the :ref:`full package list <full_pkg_list>`.


.. _repository_howto:

How to use this repository
==========================

The easiest way to use this repository is to download an APT-configuration file
(`sources.list`). Simply choose your target distribution/release and download
the configuration for a mirror close to you (depending on your browser, you
might have to right-click and choose 'save as'). Once downloaded, put the file
in the `/etc/apt/sources.list.d/` directory on your system. Moving files in
this directory will require superuser privileges, therefore you should probably
download the file into a temporary directory and subsequently move it into
`/etc/apt/sources.list.d/`. APT-configurations are available for the following
releases and repository mirrors:

.. include:: sources_lists

.. note::
  Thanks to the `Department of Experimental Psychology at the University of
  Magdeburg`_, and the `Department of Psychological and Brain Sciences at Dartmouth
  College`_ for hosting a mirror.

  If your are interested in mirroring the repository, please see the :ref:`faq`.

.. _Department of Experimental Psychology at the University of Magdeburg: http://apsy.gse.uni-magdeburg.de
.. _Department of Psychological and Brain Sciences at Dartmouth College: http://www.dartmouth.edu/~psych

Once this is done, you have to update the package index. Use your favorite
package manager, e.g. synaptic, adept, or whatever you like. In the terminal
you can use :command:`aptitude` to achieve the same::

  sudo aptitude update

Now, you can proceed to install packages, e.g.::

  sudo aptitude install lipsia

.. note::
  Not every package is available for all distributions/releases. For information
  about which package version is available for which release and architecture,
  please have a look at the corresponding package pages.


Package authentication
----------------------

When you start using this repository, you probably get warning messages
like this::

  The following signatures couldn't be verified because 
  the public key is not available.`

Or you will be asked questions like this over and over::

  WARNING: The following packages cannot be authenticated!
  ...
  Install these packages without verification [y/N]?

This is because your APT installation initially does not know the GPG
key that is used to sign the release files of this repository. Making
APT happy again is easy:

1. Get the key. Either download the `repository key from here
   <_static/neuro.debian.net.asc>`_
   or fetch it from http://wwwkeys.pgp.net (2649A5A9).

2. Now feed the key into APT by invoking::

     apt-key add #file#

   Where `#file#` has to be replaced with the location of the key file you just
   downloaded. You need to have superuser-privileges to do this (either do it
   as root or use sudo).