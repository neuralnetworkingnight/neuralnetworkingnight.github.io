#!/bin/bash

OS="$(uname)"
echo "$OS system recognised. Installing hugo software"
error_message="System not recognised ($OS). Please try to manually install everything following this script and converting
                  commands into compatible versions for your OS. If you are using Windows, have a look at:
                  https://gohugo.io/getting-started/installing/"

if [ $OS == "Darwin" ]; then
    brew install hugo || port install hugo
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    sudo apt-get install hugo || echo $error_message
else
    echo $error_message
fi

echo "Software installed. Cloning website dependencies..."
git clone https://github.com/biaslab/hugo-academic-group ./themes/hugo-academic-group/
echo "Setup completed"