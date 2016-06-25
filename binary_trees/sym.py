"""
Checks to see if a tree is symmetrical.
"""
def sym(node):
    left = node.left
    right = node.right
    if left == null || right == null:
      return left == null && right == null
    return left.value == right.value && sym(left.left, right.right) && sym(left.right, right.left);
