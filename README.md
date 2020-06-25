> Client: Docker Engine - Community
> Version:           19.03.11
> API version:       1.40
> Go version:        go1.13.10
> Git commit:        42e35e61f3
> Built:             Mon Jun  1 09:12:22 2020
> OS/Arch:           linux/amd64
> Experimental:      false

>Server: Docker Engine - Community
> Engine:
>  Version:          19.03.11
>  API version:      1.40 (minimum version 1.12)
>  Go version:       go1.13.10
>  Git commit:       42e35e61f3
>  Built:            Mon Jun  1 09:10:54 2020
>  OS/Arch:          linux/amd64
>  Experimental:     false
> containerd:
>  Version:          1.2.13
>  GitCommit:        7ad184331fa3e55e52b890ea95e65ba581ae3429
> runc:
>  Version:          1.0.0-rc10
>  GitCommit:        dc9208a3303feef5b3839f4323d9beb36df0a9dd
> docker-init:
>  Version:          0.18.0
>  GitCommit:        fec3683

# To run project
- cd to project main directory
- docker build --tag wordcount .
- docker run -it wordcount

