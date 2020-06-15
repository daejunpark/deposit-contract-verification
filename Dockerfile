ARG K_COMMIT
FROM runtimeverificationinc/kframework-k:ubuntu-bionic-${K_COMMIT}

ARG USER_ID=1000
ARG GROUP_ID=1000
RUN groupadd -g $GROUP_ID user && useradd -m -u $USER_ID -s /bin/sh -g user user

USER user:user
WORKDIR /home/user
