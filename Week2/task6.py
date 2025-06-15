from collections import Counter

# Input
X = int(input())
shoe_sizes = list(map(int, input().split()))
N = int(input())

# Inventory counter
inventory = Counter(shoe_sizes)

# Earnings calculation
earnings = 0
for _ in range(N):
    size, price = map(int, input().split())
    if inventory[size] > 0:
        earnings += price
        inventory[size] -= 1

# Output
print(earnings)
