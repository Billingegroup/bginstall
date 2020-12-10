echo "Hi, I'm the software assistant of Billinge group. I will help you install the software that you may need in your research."
# install conda
echo -e "First, have you already install conda or miniconda ([y]/n)? \c"
read answer0
if [[ $answer0 = "n" ]]; then
  echo "Please visit https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html to install it."
  echo "After you finish the installtion, please re-open the terminal and call me again."
  exit 0
fi
echo "Congratulations. You have installed the conda."
# install PDFgui
echo "Now, let's install the software."
echo -e "Would you like me to install the PDFgui, the GUI interface of PDF modeling ([y]/n)? \c"
read answer1
if [[ $answer1 = "n" ]]; then
  echo "I see. You don't need the PDFgui."
else
  echo "I will begin to install PDFgui."
  echo -e "Please give a name of the environment where the PDFgui will be installed [pdfgui]: \c"
  read env1
  env1=${env1:-pdfgui}
  conda create -n $env1 -c defaults -c diffpy -c travis diffpy.pdfgui python=2.7
fi
# install pdfstream
echo -e "Would you like me to install PDFstream, the tool to process XRD data to PDF data ([y]/n)? \c"
read answer2
if [[ $answer2 = "n" ]]; then
  echo "Ok. I won't install PDFstream."
else
  echo "I will begin to install PDFstream"
  echo -e "Please give a name of the environment where the PDFstream will be installed [pdfstream]: \c"
  read env2
  env2=${env2:-pdfstream}
  conda create -n $env2 -c defaults -c nsls2forge pdfstream
fi
# install diffpy-cmi
echo "Would you like me to install Diffpy-CMI, the complex modeling software for PDF and more?"
echo "Please note that Diffpy-CMI only runs on linux and macos systems. It doesn't work on windows."
echo -e "So do you want me to install it ([y]/n)? \c"
read answer3
if [[ $answer3 = "n" ]]; then
  echo "Got it. Skip the installation of Diffpy-CMI."
else
  echo "I will begin to install Diffpy-CMI."
  echo -e "Please give a name of the environment where the diffpy-CMI will be installed [diffpy]: \c"
  read env3
  env3=${env3:-diffpy}
  conda create -n $env3 -c defaults -c diffpy diffpy-cmi
fi
# end
echo "Thank you for chatting with me. May you have a nice experience in Billinge group."
