public void testGetGraphNode() {
    GraphNode gn = new GraphNode();
    node = new MyNode(gn, new Point(1, 100), new Rectangle(1, 2, 10, 100), Helper.getCollection());
    assertEquals("Equal is expected.", gn, node.getGraphNode());
}

