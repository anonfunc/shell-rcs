ssl13() {
  export CPPFLAGS=-I/usr/local/opt/openssl101/include
  export LDFLAGS=-L/usr/local/opt/openssl101/lib
}

ssl16() {
  export CPPFLAGS=-I/export/apps/openssl/include
  export LDFLAGS='-L/export/apps/openssl/lib -Wl,-rpath,/export/apps/openssl/lib'
}
