FROM ubuntu:20.10

WORKDIR /home

RUN apt-get update
RUN yes | apt-get install vim
RUN apt-get install nano

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