def check_permutation(string_array):
    # function checks if a string is permutation of another
    if len(string_array[0]) == len(string_array[1]):
        return sorted(string_array[0]) == sorted(string_array[1])
    return False