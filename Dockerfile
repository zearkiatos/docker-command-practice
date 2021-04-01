FROM ubuntu:20.10

WORKDIR /home

COPY . .

RUN apt-get update
RUN yes | apt-get install vim
RUN apt-get install nano
RUN yes | apt install curl
RUN yes | apt install wget

CMD cat data/MOCK_DATA.json && \
head data/MOCK_DATA.json && \
head -n 5 data/MOCK_DATA.json && \
grep Jurassic data/MOCK_DATA.json && \
grep jurassic -i data/MOCK_DATA.json && \
grep -i "wars'),$" data/MOCK_DATA.json && \
sed 's/Jurassic/start/g' data/MOCK_DATA.json && \
sed '$d' data/MOCK_DATA.json && \
awk -F ',' '{ print $1 }' data/MOCK_DATA.json && \
awk -F ',' 'NR > 1 && $3 > 0 { print $1, $3 * $4}' data/MOCK_DATA.json && \
ls data/MOCK_DATA.json && \
ls > archivos.txt && \
ls -l >> archivos.txt && \
ls -l | more && \
cat data/MOCK_DATA.json | wc -l && \
mkdir exampleCode && \
cd exampleCode && \
vim TwitterNotificer.cs && \
head -n 44 TwitterNotifier.cs > PartialTwitterNotifier.txt && \
tail -n 44 TwitterNotifier.cs > PartialTwitterNotifier2.txt && \
date >> PartialTwitterNotifier.txt && \
fg && \
ps && \
ps ax && \
ps ax | grep init && \
top && \
touch new.txt && \
chmod o-w new.txt && \
echo echo "Hello world" > hello.bash && \
chmod -x hello.bash && \
chmod 760 hello.bash && \
chown hello.bash && \
cd data && \
ls MOCK_DATA.json -l && \
ls MOCK_DATA.json -lh && \
gzip MOCK_DATA.json && \
gzip -d MOCK_DATA.json.gz && \
tar cf backup.tar backup/* && \
tar t backup.tar && \
mv backup.tar Pedro/ && \
cd Pedro && \
tar xf backup.tar && \
tar czf backup.tgz backup/* && \
mv backup.tgz guzzle/ && \
tar xzf backup.tgz && \
locate MOCK_DATA.json && \
updatedb && \
whereis echo && \
find . -user pedro && \
find . -type f -mtime +7 && \
find . -type f -mtime +7 -exec cp {} ./backup/ && \
curl https://platzi.com && \
curl -v https://platzi.com | more && \
curl -v https://platzi.com > /dev/null && \
wget https://www.php.net/distributions/php-7.3.10.tar.bz2 && \
echo $PATH && \
export MY_VAR=Pedro && \
MY_VAR=/home php env.php


RUN yes | apt install lynx

# kill -9 (process number)
# killall

# CMD date && \
# echo "My Name is Pedro 👨🏻‍💻 🇻🇪" && \
# ls && \
# ls -a && \
# pwd && \
# cd - && \
# mkdir test && \
# ls -l && \
# cd test/ && \
# ls -a && \
# cd .. && \
# touch test.html && \
# cp test.html test/ && \
# cd test && \
# ls && \
# rm test.html && \
# mv ../test.html . && \
# ls ../ && \
# cd .. && \
# ls -l && \
# cd /home && \
# mkdir development && \
# cd development && \
# mkdir kubernetes && \
# cd kubernetes
# echo "Hola Mundo!" | mail -s "Testing" TU_EMAIL