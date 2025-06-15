import re

T = int(input())
for _ in range(T):
    pattern = input()
    try:
        re.compile(pattern)
        if re.search(r'([*+?])\1+|[*+?]{2,}', pattern):
            # Manually reject multiple consecutive quantifiers
            raise re.error("multiple repeat")
        print(True)
    except re.error:
        print(False)
