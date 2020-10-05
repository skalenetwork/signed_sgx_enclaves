FROM skalenetwork/sgxwallet:1.58.5-stable.1
COPY secure_enclave_signed.so /usr/src/sdk/secure_enclave/secure_enclave.so 
