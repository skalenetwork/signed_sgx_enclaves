# 1. Ceremony procedure to create submission files 
```
docker run -v /usr/sdk/secure_enclave:/tmp/secure_enclave IMAGE --entrypoint /bin/bash
cd scripts
generate_signing_key.bash
sign_enclave.bash
```

# 2Creating a signed enclave release docker image:

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



