FROM swift:5.5

ARG MAIN

WORKDIR /work
RUN mkdir -p /work/Sources/jtd_e2e_test

COPY /Package.swift /work/Package.swift
COPY /main.swift /work/Sources/jtd_e2e_test/main.swift
COPY /gen /work/Sources/jtd_e2e_test/
RUN sed -i -e "s/MAIN/$MAIN/g" /work/Sources/jtd_e2e_test/main.swift
RUN swift build

ENTRYPOINT /work/.build/debug/jtd_e2e_test