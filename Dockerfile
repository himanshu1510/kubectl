FROM centos
RUN yum install sudo -y
RUN yum install python36 -y
RUN python3 -m pip --no-cache-dir install --upgrade pip
RUN pip3 install numpy
RUN pip3 install scikit-learn scikit-image pillow
RUN pip3 install seaborn
RUN pip3 install tensorflow
RUN pip3 install keras
RUN echo -e "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN mkdir /workstation
CMD python3 /workstation/project.py

