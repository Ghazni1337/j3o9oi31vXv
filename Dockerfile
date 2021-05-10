FROM golang
WORKDIR /go
RUN git clone https://github.com/pingme998/rclone.git
WORKDIR /go/rclone
RUN go build
COPY entrypoint.sh /entrypoint.sh
COPY rclone.conf /.config/rclone/rclone.conf
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
https://1sundaran.anazserver.workers.dev/0:/mo/rclone
