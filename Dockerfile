FROM mcr.microsoft.com/azure-cli

RUN apk update && apk add ca-certificates
RUN apk add bash unzip

# https://github.com/hashicorp/terraform/releases
ENV TERRAFORM_VERSION=1.0.9
ENV SRC_HOME=/usr/src

WORKDIR /usr/downloads

# install terraform
RUN curl -L https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip --output terraform.zip
RUN unzip terraform.zip
RUN mv terraform /usr/local/bin

ENV TF_DATA_DIR "/.terraform"

WORKDIR ${SRC_HOME}
COPY /src .

RUN ["chmod", "+x", "./terraform-apply.sh"]
RUN ["chmod", "+x", "./terraform-destroy.sh"]
RUN ["chmod", "+x", "./terraform-init.sh"]
RUN ["chmod", "+x", "./terraform-plan.sh"]
CMD ["/bin/bash"]