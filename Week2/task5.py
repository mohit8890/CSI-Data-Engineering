def merge_the_tools(string, k):
    for i in range(0, len(string), k):
        substring = string[i:i + k]
        seen = ''
        for char in substring:
            if char not in seen:
                seen += char
        print(seen)

if __name__ == '__main__':
    string, k = input(), int(input())
    merge_the_tools(string, k)
