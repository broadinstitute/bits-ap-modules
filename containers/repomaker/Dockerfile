FROM gcr.io/cloud-builders/gsutil
RUN apt update -y && \
    apt install -y createrepo && \
    apt autoremove -y

WORKDIR /workspace

CMD ["/builder/google-cloud-sdk/bin/gsutil", "rsync", "-drc", "gs://apz-testing-bucket/Packages", "/workspace"]

CMD ["/usr/bin/createrepo", "/workspace"]
