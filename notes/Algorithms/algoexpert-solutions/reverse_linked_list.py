# O(n) O(1)

def reverseLinkedList(head):
    p1 = head

    if p1.next is not None:
        p2 = p1.next
    else:
        return p1
    if p2.next is not None:
        p3 = p2.next
    else:
        p2.next = p1
        p1.next = None
        return p2

    p1.next = None

    while True:
        p2.next = p1
        if p3.next is not None:
            p1 = p2
            p2 = p3
            p3 = p2.next
        else:
            p2.next = p1
            p3.next = p2
            return p3


# consice algoexpert solution

def reverseLinkedList(head):
    p1, p2 = None, head
    while p2 is not None:
        p3 = p2.next
        p2.next = p1
        p1 = p2
        p2 = p3
    return p1