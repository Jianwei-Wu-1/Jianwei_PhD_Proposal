public void testInvertFrom(){
    ImmutableMultimap<Integer, String> empty = ImmutableMultimap.of();

    Multimap<String, Integer> multimap =
        Multimaps.invertFrom(empty, ArrayListMultimap.<String, Integer>create());
    assertTrue(multimap.isEmpty());

    ImmutableMultimap<Integer, String> single =
        new ImmutableMultimap.Builder<Integer, String>().put(1, "one").put(2, "two").build();

    assertSame(multimap, Multimaps.invertFrom(single, multimap));

    ImmutableMultimap<String, Integer> expected =
        new ImmutableMultimap.Builder<String, Integer>().put("one", 1).put("two", 2).build();

    assertEquals(expected, multimap);
}
