from math import factorial

# Python implementation of a BST
class Tree:
    def __init__(self, *seq):
        self.root = None
        self.left = None
        self.right = None

        for value in seq:
            self.insert(value)

    def insert(self, value):
        if not self.root:
            self.root = value
        elif self.root > value:
            if self.left:
                self.left.insert(value)
            else:
                self.left = Tree(value)
        else:
            if self.right:
                self.right.insert(value)
            else:
                self.right = Tree(value)

def calculate_binomial_coefficient(a, b):
    return factorial(a) / (factorial(b) * factorial(a - b))

def count(tree):
    if tree:
        return 1 + count(tree.left) + count(tree.right)
    return 0

def calculate_permutations(tree):
    if not tree:
        return 1
    left_subtree = count(tree.left)
    right_subtree = count(tree.right)

    left_perm = calculate_permutations(tree.left)
    right_perm = calculate_permutations(tree.right)

    return calculate_binomial_coefficient(left_subtree + right_subtree, right_subtree) * left_perm * right_perm

def answer(seq):
    return calculate_permutations(Tree(*seq))