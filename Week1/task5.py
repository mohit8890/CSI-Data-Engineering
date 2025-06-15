from itertools import combinations

n = int(input())
letters = input().split()
k = int(input())

comb = list(combinations(letters, k))

count = sum(1 for c in comb if 'a' in c)

probability = count / len(comb)

print(f"{probability:.4f}")
