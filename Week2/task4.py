def print_rangoli(size):
    import string
    alpha = string.ascii_lowercase

    lines = []
    for i in range(size):
        # create the pattern for each line from size-1 to i, then i to size-1 (reversed)
        s = '-'.join(alpha[size-1:i:-1] + alpha[i:size])
        lines.append(s.center(4 * size - 3, '-'))

    # print top (reversed) + middle + bottom
    for line in lines[::-1] + lines[1:]:
        print(line)

if __name__ == '__main__':
    n = int(input())
    print_rangoli(n)
