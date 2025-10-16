


int power(int a, int b)
{
    int pow = 1;
    for (int i = 0; i < b; i++)
        pow *= a;
    return pow;
}

int my_strlen(const char *s)
{
    int len = 0;
    const char *p = s;
    while (*p != '\0')
    {
        p++;
        len++;
    }
    return len;
}

int get_value(const char *b, char c)
{
    int i = 0;
    while (*b != '\0')
    {
        if (*b == c)
        {
            return i;
        }
        b++;
        i++;
    }
    return -1;
}

int is_digit(char c)
{
    return c >= '0' && c <= '9';
}

int is_letter(char c)
{
    return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
}

int my_atoi_base(const char *str, const char *base)
{
    if (str == NULL || *str == '\0')
    {
        return 0;
    }

    int base_len = my_strlen(base);
    if (base_len < 2)
    {
        return 0;
    }

    while (*str == ' ' || (*str >= 9 && *str <= 13))
    {
        str++;
    }

    int neg = 0;
    if (*str == '-' || *str == '+')
    {
        if (*str == '-')
        {
            neg = 1;
        }

        str++;
    }

    int res = 0;
    int index;
    int digits_found = 0;

    while (*str != '\0')
    {
        index = get_value(base, *str);
        if (index == -1)
        {
            return 0;
        }

        res = res * base_len + index;
        digits_found = 1;
        str++;
    }

    if (digits_found == 0)
    {
        return 0;
    }

    return neg ? -res : res;
}
