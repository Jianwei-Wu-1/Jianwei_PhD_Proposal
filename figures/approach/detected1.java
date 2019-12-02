public void shouldThrowExceptionIfTokenIsAbsent() {
    final String response = "&expires=5108";
    extractor.extract(ok(response));
}
