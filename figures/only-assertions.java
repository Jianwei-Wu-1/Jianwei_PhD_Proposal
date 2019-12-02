public void testJoin() {
  assertEquals("", Chars.join(",", EMPTY));
  assertEquals("1", Chars.join(",", '1'));
  assertEquals("1,2", Chars.join(",", '1', '2'));
  assertEquals("123", Chars.join("", '1', '2', '3'));
}
