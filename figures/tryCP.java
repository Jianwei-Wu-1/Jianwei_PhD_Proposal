@Test
public void test...(){
    Class <scenario> = new Class();
    try {
        <scenario>.<action>; // Required
        fail(); // Required
    }
    catch (Exception e){
        assert...(...<predicate>); // Optional
    }
}
