INT_MAX = 10000
INT_MIN = 0

class node:
    def __init__(self, data):
        self.data = data
        self.left = None
        self.right = None

def is_this_tree_a_binary_search_tree(root):
    return (isBSTUtil(root, INT_MIN, INT_MAX))

def isBSTUtil(node, mini, maxi):
    if node is None:
        return True

    if node.data < INT_MIN or node.data > INT_MAX:
        raise Exception("Node value out of range: " + str(node.data))

    if node.data < mini or node.data > maxi:
        return False

    return (isBSTUtil(node.left, mini, node.data - 1) and
            isBSTUtil(node.right, node.data+1, maxi))

if __name__ == "__main__":
    root = node(4)
    root.left = node(2)
    root.right = node(5)
    root.left.left = node(1)
    root.left.right = node(3)

    if(is_this_tree_a_binary_search_tree(root)):
        print("It is a Binary Tree!")
    else:
        print("It is not a Binary Tree!")