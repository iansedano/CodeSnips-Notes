class DoublyLinkedList:
    def __init__(self):
        self.head = None
        self.tail = None
        
    def setHead(self, node):
        print(f"setting head")
        if self.head is None:
            self.head = node
            self.tail = node
            return
        self.insertBefore(self.head, node)
            
    def setTail(self, node):
        print(f"setting tail")
        if self.tail is None:
            self.tail = node
            self.head = node
            return
        self.insertAfter(self.tail, node)
        

    def insertBefore(self, node, nodeToInsert):
        print(f"insert before")
        if nodeToInsert == self.head and nodeToInsert == self.tail:
            return
        self.remove(nodeToInsert)
        nodeToInsert.next = node
        nodeToInsert.prev = node.prev
        if node.prev is None:
            self.head = nodeToInsert
        else:
            node.prev.next = nodeToInsert
        node.prev = nodeToInsert
        

    def insertAfter(self, node, nodeToInsert):
        print(f"insert after")
        if nodeToInsert == self.tail and nodeToInsert == self.head:
            return
        self.remove(nodeToInsert)
        nodeToInsert.next = node.next
        nodeToInsert.prev = node
        if node.next is None:
            self.tail = nodeToInsert
        else:
            node.next.prev = nodeToInsert
        node.next = nodeToInsert
        
    
    def insertAtPosition(self, position, nodeToInsert):
        print(f"insert at pos")
        node = self.head
        counter = 1
        while node is not None and counter < position:
            node = node.next
            counter += 1
        if node is None:
            self.setTail(nodeToInsert)
        else:
            self.insertBefore(node, nodeToInsert)
        pass
    
    def removeNodesWithValue(self, value):
        print(f"remove node w val")
        node = self.head
        while node is not None:
            nodeToRemove = node
            node = node.next
            if nodeToRemove.value == value:
                self.remove(nodeToRemove)

    def remove(self, node):
        print(f"remove")
        if node == self.head:
            self.head = self.head.next
        if node == self.tail:
            self.tail = self.tail.prev
        self.removeNodeBindings(node)
    
    
    def containsNodeWithValue(self, value):
        print(f"contains node with val")
        node = self.head
        
        while node is not None and node.value != value:
            node = node.next
        print(f"no value found")
        return node is not None
    
    def removeNodeBindings(self, node):
        print(f"rem node bindings")
        if node.prev is not None:
            node.prev.next = node.next
        if node.next is not None:
            node.next.prev = node.prev
        node.next = None
        node.prev = None
        
    
