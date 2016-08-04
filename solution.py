"""
Given a chunk of string and a word, returns the shortest,
lexicographically earliest string that can be formed by
removing occurrences of word from chunk.
"""
import re

def answer(chunk, word):
    """
    Iterates through words in chunk and then through
    all occurances of that word, rotates the chunk to
    delete the word and then deletes the other words,
    saving each permutation in a list. Then returns the lexicographically earliest string.
    """
    for letter in range(1, len(re.findall(word, chunk)) + 1):
        if len(re.findall(word, chunk)) > 0:
            all_occurances = [i for i, _ in enumerate(chunk) if chunk.startswith(word, i)]
            possible_outputs = list()
            for letter in all_occurances:
                rotated_chunk = chunk[letter:] + chunk[:letter]
                updated_rotated_chunk = rotated_chunk.replace(word, "", 1)
                rotated_chunk = updated_rotated_chunk[-letter:] + updated_rotated_chunk[:-letter]
                while len(re.findall(word, rotated_chunk)) > 0:
                    rotated_chunk = re.sub(str(word), '', rotated_chunk, 1)
                possible_outputs.append(rotated_chunk)
    sorted_chunks = sorted(possible_outputs)[0]
    return sorted_chunks
