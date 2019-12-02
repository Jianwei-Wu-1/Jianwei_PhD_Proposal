public void testConstrainToRange(){
    assertEquals((long) 1, Longs.constrainToRange((long) 1, (long) 0, (long) 5));
    assertEquals((long) 1, Longs.constrainToRange((long) 1, (long) 1, (long) 5));
    assertEquals((long) 3, Longs.constrainToRange((long) 1, (long) 3, (long) 5));
    assertEquals((long) -1, Longs.constrainToRange((long) 0, (long) -5, (long) -1));
    assertEquals((long) 2, Longs.constrainToRange((long) 5, (long) 2, (long) 2));
    try {
        Longs.constrainToRange((long) 1, (long) 3, (long) 2);
        fail();
    } catch (IllegalArgumentException expected) {
    }
}
