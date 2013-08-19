#!/bin/bash                                                                                                                                                                                                                        

echo "Going to /home"
cd /home/spektrum

echo "Remove spektrumusic directory"
rm -rf spektrumusic

echo "Exporting from SVN"
svn export file:///home/spektrum/svn/railsdev/trunk/spektrumusic

echo "Go into spektrumusic"
cd spektrumusic

echo "bundle install"
bundle install --path vendor/bundle

echo "Remove existing public/assets"
rm -rf public/assets

echo "Precompiling"
rake assets:precompile

echo "Re-enabling Phusion Passenger"
echo -e "PassengerEnabled On\nPassengerAppRoot $HOME/spektrumusic\n" > ~/spektrumusic/public/.htaccess

echo "Touch Restart"
touch tmp/restart.txt