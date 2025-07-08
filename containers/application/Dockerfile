FROM quay.io/centos/centos:stream9

RUN dnf install -y \
      epel-release && \
    dnf install -y \
      cmake \
      make \
      g++ \
      socat \
      vsomeip3 \
      vsomeip3-devel \
      vsomeip3-routingmanager \
      dlt-daemon \
      dlt-tools \
      dlt-libs \
      dlt-libs-devel \
      boost-devel \
      boost-system \
      boost-thread \
      boost-log \
      boost-chrono \
      boost-date-time \
      boost-atomic \
      boost-filesystem \
      boost-regex \
    && dnf clean all
