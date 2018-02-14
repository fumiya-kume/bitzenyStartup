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
sh ./run.sh
