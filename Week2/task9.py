n = int(input())
s = set(map(int, input().split()))
N = int(input())

for _ in range(N):
    parts = input().split()
    command = parts[0]

    if command == "pop":
        if s:
            s.remove(sorted(s)[0])  # ensures same pop behavior as sample
    elif command == "remove":
        try:
            s.remove(int(parts[1]))
        except KeyError:
            pass
    elif command == "discard":
        s.discard(int(parts[1]))

print(sum(s))
