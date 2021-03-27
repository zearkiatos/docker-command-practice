FROM ubuntu:20.10

WORKDIR /home

COPY . .

RUN apt-get update
RUN yes | apt-get install vim
RUN apt-get install nano

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
date >> PartialTwitterNotifier.txt

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