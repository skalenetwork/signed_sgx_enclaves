FROM skalenetwork/sgxwallet_release
RUN rm  /usr/src/sdk/secure_enclave/secure_enclave*.so  
COPY /tmp/secure_enclave_signed.so /usr/src/sdk/secure_enclave/secure_enclave.signed.so 
