public void testGetSSLProtocol() {
    Http11Nio2Protocol protocol = new Http11Nio2Protocol();
    assertNotNull(protocol.getSSLProtocol());
}
