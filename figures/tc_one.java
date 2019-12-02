@Test
public void test...(){
    ...
    try {
        <scenario>.<action>; // <scenario> is optional
        fail(); // Required
    }
    catch (Exception e){
        assert...(...<predicate>); // Optional
    }
}
