FROM ubuntu:20.10

WORKDIR /home

CMD date && \
echo "My Name is Pedro 👨🏻‍💻 🇻🇪" && \
ls && \
ls -a && \
pwd && \
cd - && \
mkdir test && \
ls -l && \
cd test/ && \
ls -a && \
cd .. && \
cp test.html test/ && \
cd test && \
ls && \
rm test.html && \
mv ../test.html . && \
ls ../ && \
rmdir test.html ../ && \
cd .. && \
rmdir test/ && \
ls -l