from memory import UnsafePointer
from collections import Optional

# Singly lindked lists
@value
struct SinglyNode:
    alias _NodePointer = UnsafePointer[Self]

    var value: Int
    var next: Self._NodePointer

    fn __init__(out self, owned value: Int, next: Optional[Self._NodePointer] = None):
        self.value = value
        self.next = next.value() if next else Self._NodePointer()


def traverse(head: SinglyNode):
    var current = UnsafePointer(to=head)
    while current:
        print(current[].value)
        current = current[].next       

def search(head: SinglyNode, val: Int) -> Bool:
    curr = UnsafePointer(to=head)
    while curr:
        if val == curr[].value:
            return True
        curr = curr[].next

    return False

# Doubly lindked lists
@value
struct DoublyNode:
    alias _NodePointer = UnsafePointer[Self]

    var value: Int
    var next: Self._NodePointer
    var prev: Self._NodePointer

    fn __init__(out self, owned value: Int, prev: Optional[Self._NodePointer]=None, next: Optional[Self._NodePointer]=None):
        self.value = value
        self.prev = prev.value() if prev else Self._NodePointer()
        self.next = next.value() if next else Self._NodePointer()

def traverse(head: DoublyNode):
    var current = UnsafePointer(to=head)
    while current:
        print(current[].value)
        current = current[].next


def main():
    var head: SinglyNode = SinglyNode(1)
    var A: SinglyNode = SinglyNode(3)
    var B: SinglyNode = SinglyNode(4)
    var C: SinglyNode = SinglyNode(7)

    head.next = UnsafePointer(to=A)
    A.next = UnsafePointer(to=B)
    B.next = UnsafePointer(to=C)

    traverse(head)
    print(search(head, 3))
    _ = (head, A, B, C) # if you remove the memory location can contain garabge value.


    



