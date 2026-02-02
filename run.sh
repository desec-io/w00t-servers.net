docker run --rm -v ./conf:/config -v ./zones:/storage -p 53:53/udp -p 53:53/tcp --name knot -d cznic/knot knotd
