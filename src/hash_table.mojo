from collections import Set, Dict, Counter

def print_set(set: Set[Int]):
    for elem in set:
        print(elem, end=", ")

    print()

def print_dict(d: Dict[String, Int]):
    print("{", end="")
    for item in d.items():
        print(item.key, end=":")
        print(item.value, end=", ")
    print("}")


def main():
    # hash sets
    var set: Set[Int] = {} # empty set

    # Add item into set - O(1)
    set.add(1)
    set.add(2)
    set.add(3)

    print_set(set)

    if 1 in set:
        print(True)

    # Remove item from set - O(1) 
    set.remove(3)
    print_set(set)

    # hash maps
    var dict: Dict[String, Int] = {"greg": 1, "steve": 2, "rob": 3}
    print_dict(dict)

    dict["arsh"] = 4
    print_dict(dict)
    
    if "greg" in dict:
        print(True)

    print(dict["greg"])

    # counter
    from collections import Counter
    var c = Counter[String]("a", "a", "a", "b", "b", "c", "d", "c", "c")
    print(c["a"]) 
    print(c["b"])
    