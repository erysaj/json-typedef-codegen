FROM swift:5.5

ARG MAIN

WORKDIR /work

RUN mkdir /work/src

COPY /main.swift /work/src/main.swift
# COPY /gen /work/src/jtd_codegen_e2e/
# RUN sed -i -e "s/MAIN/$MAIN/g" /work/src/main.swift
RUN swiftc src/main.swift -o jtd_e2e_test

ENTRYPOINT jtd_e2e_test