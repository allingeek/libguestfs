FROM centos:7
MAINTAINER "Jeff Nickoloff" <jeff@allingeek.com>
ENTRYPOINT ["/usr/bin/guestfish"]
CMD ["-h"]
ENV LIBGUESTFS_BACKEND direct
RUN yum -y install libguestfs-tools && \
    yum -y update && \
    yum clean all
