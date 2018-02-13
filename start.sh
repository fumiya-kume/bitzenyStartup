sudo apt-get update -y
sudo apt-get upgrade -y
git clone https://github.com/macchky/cpuminer.git
cd cpuminer
sudo apt-get install gcc -y
sudo apt-get install automake  -y
sudo apt-get install preferably  -y
sudo apt-get install autoconf -y
sudo apt-get install build-essential libcurl4-openssl-dev -y
./autogen.sh    # only needed if building from git repo
./nomacro.pl    # in case the assembler doesn't support macros
./configure CFLAGS="-O3" # Make sure -O3 is an O and not a zero!
make
./minerd -a yescrypt -o stratum+tcp://bitzeny.bluepool.info:3330 -u ZmE3QxnPc2kbP8D6gik2THfdEw2dsQESTJ
