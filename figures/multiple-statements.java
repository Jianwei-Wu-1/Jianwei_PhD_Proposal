public void testCloseQuietly_readerWithEatenException() throws IOException {
  TestReader in = new TestReader(TestOption.CLOSE_THROWS);
  Closeables.closeQuietly(in);
  assertTrue(in.closed());
}
