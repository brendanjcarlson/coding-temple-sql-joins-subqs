"""
Compute Intersection
Given two arrays, write a function to compute their intersection.
Example 1:
Input: nums1 = [1,2,2,1], nums2 = [2,2]
Output: [2]
Example 2:
Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
Output: [9,4]
Note:
Each element in the result must be unique.
The result can be in any order.
"""
import requests
def i(a, b): return list(set(a) & set(b))


def intersection(arr1: list, arr2: list) -> list:
    return list(set(arr1).intersection(set(arr2)))


print(intersection([1, 2, 2, 1], [2, 2, ]))


def linear(arr1: list, arr2: list) -> list:
    result = []
    shortest = set(arr1) if len(arr1) < len(arr2) else set(arr2)
    longest = set(arr1) if len(arr1) > len(arr2) else set(arr2)
    for el in longest:
        if el in shortest:
            result.append(el)
    return result


print(linear([1, 2, 2, 1], [2, 2, ]))


def merged(arr1: list, arr2: list) -> list:
    result = []
    merged = [*set(arr1), *set(arr2)]
    for el in merged:
        if merged.count(el) > 1:
            result.append(el)
    return list(set(result))


print(merged([1, 2, 2, 1], [2, 2, ]))


print((lambda a, b: list(set(a) & set(b)))([1, 2, 2, 1], [2, 2, ]))