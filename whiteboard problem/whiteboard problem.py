# Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.
# given type: string
# return: int

from collections import Counter

def firstUniqChar(s):
    answer = -1
    letter = ""
    s = s.lower()
    s = list(s)
    dict1 = Counter(s)
    for key, value in dict1.items():
        if value == 1:
            letter = key
            break
    if letter in s:
        answer = s.index(letter)
    return answer

print(firstUniqChar("leetcode"))
print(firstUniqChar("loveleetcode"))
print(firstUniqChar("hhbbttll"))