public void testEntries(){
    assertEqualIgnoringOrder(getSampleElements(), multimap().entries());
}
