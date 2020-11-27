# 1. Ceremony procedure to create submission files 
```

docker run -ti -v $PWD/signed_enclaves:/usr/src/sdk/signed_enclaves --entrypoint /bin/bash IMAGE -c "cd scripts && ./generate_signing_key.bash && ./sign_enclave.bash && exit"

tar -cvf ceremony${ENCLAVE_VERSION}.tar signed_enclaves
```

Upload the file ceremony${ENCLAVE_VERSION}.tar to this repo

# 2. Creating a signed enclave release docker image:

1. Copy the correct signed enclave version into ./signed_enclave.so

  For instance
  
  ```
  cp signed_enclave.so.1 signed_enclave.so
  ```
  
2. Build docker image locally 

```
docker build . -t skalenetwork/sgxwallet_signed
```

3. Login to docker hub

```
docker login -u YOUR_USERNAME -p YOUR_PASSWORD
```

4. Push signed image to docker hub

```
docker push skalenetwork/sgxwallet_signed
```


# signed_sgx_enclaves

## Version 0

Unsigned DockerImage: 

docker pull skalenetwork/sgxwallet_release:1.58.0-stable.0

## Version 1

Unsigned DockerImage: 

docker pull skalenetwork/sgxwallet_release:1.58.5-stable.1

Signed enclave

signed_enclave.so.1 

## Version 2

Unsigned DockerImage: 

docker pull skalenetwork/sgxwallet_intelsubmission:1.59.1-stable.7





