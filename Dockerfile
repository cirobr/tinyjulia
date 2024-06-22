FROM julia:1.10.4-bookworm
# FROM julia:1.10.4-alpine

# install git
RUN apt update
RUN apt install -y git git-lfs openssh-client
RUN git config --global user.name "cirobr"
RUN git config --global user.email ciro.rosa@alumni.usp.br

# add packages to default julia
RUN mkdir -p /home/pkgs
COPY ./packages.jl /home/pkgs/packages.jl
# RUN julia -q /home/app/packages.jl
RUN --mount=type=ssh julia -q /home/pkgs/packages.jl
RUN rm -rf /home/pkgs


### entry point
CMD ["julia"]
