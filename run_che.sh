sudo docker run \
    -p 8080:8080 \
    -d \
    --restart always
    --name che \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $HOME/eclipse:/data  \
    -v $HOME/conf:/conf \
    eclipse/che-server:5.0.0-latest
