.. Packaging Scientific Python documentation master file, created by
   sphinx-quickstart on Thu Jun 28 12:35:56 2018.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Billinge Group Software Assistant Documentation
===============================================

This is the document of Billinge group software assistant.
It is a script that helps new students in Billinge group to install the software that they need for the research.

How to use it?
==============

Prerequisites
-------------

Make sure you have ``bash`` shell on your machine.
The shell is usually implemented in the terminal of macos and linux system.
For windows system, we recommend git bash.

Usage
-----

Assuming that you have finished the prerequisites, let's download the script and run it.
Open your terminal and run the following command::

   curl https://raw.githubusercontent.com/Billingegroup/gbinstall/master/scripts/bginstall.sh -o bginstall.sh

If you will find that a file ``bginstall.sh`` is downloaded.
Then, run the following command::

   bash bginstall.sh

You will meet with the Billinge group software assistant.
The assistant will ask you questions about the software you would like to installed and you type the answer in
your command line to answer the questions.
If you just press ``ENTER`` for the answer, the default answer (the one in brackets) will be used.
