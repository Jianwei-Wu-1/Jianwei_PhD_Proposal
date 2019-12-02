public void testExecute_ActionExecutionException(){
    activityGraph.setTop(null);
    try {
        action.execute();
        fail("ActionExecutionException expected.");
    } catch (ActionExecutionException e) {
        //good
    }
}
