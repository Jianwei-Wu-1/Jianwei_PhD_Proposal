public void testEscapedJsonInResponse() {
    final OAuth2AccessToken token = extractor.extract(ok("{ \"access_token\":\"I0122HKLEM2\\/MV3ABKFTDT3T5X\","
    + "\"token_type\":\"example\"}"));
    assertEquals("I0122HKLEM2/MV3ABKFTDT3T5X", token.getAccessToken());
}

