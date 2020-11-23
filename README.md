# 1. Ceremony procedure to create submission files 
```
docker run -ti -v $PWD/secure_enclave:/usr/src/sdk --entrypoint /bin/bash IMAGE
cd scripts
./generate_signing_key.bash
./sign_enclave.bash
cd ..
tar -cvf ceremony${ENCLAVE_VERSION.}tar signed_enclaves
```

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

docker pull skalenetwork/sgxwallet:1.59.1-develop.2





