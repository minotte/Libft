<h1 align="center"> Libft </h>

## Project

Libft is the first project in the 42 program. 
to understand basic C functions. We need to create our own lib so that we can use it on all future projects. 

## Subject

[link](https://github.com/minotte/Libft/blob/main/fr.subject.pdf)

## Constraints

The whole files of the projects need to follow 42 norm.

## Function

### Part 1 - Libc functions

|    Name    | Description                                                                              |
|:----------:|:----------------------------------------------------------------------------------------:|
| `isalpha`  | Tests if a character is alphabetic.                                                      |
| `isdigit`  | Tests if a character is a decimal digit.                                                 |
| `isalnum`  | Tests if a character is alphanumeric.                                                    |
| `isascii`  | Tests if a character is in the ASCII table.                                              |
| `isprint`  | Tests if a character is printable.                                                       |
| `strlen`   | Returns the length of a string.                                                          |
| `memset`   | Fills a block of memory with a specified constant byte.                                  |
| `bzero`    | Fills a block of memory with null bytes.                                                 |
| `memcpy`   | Copies a block of memory from a source to a destination.                                 |
| `memmove`  | Copies a block of memory from a source to a destination, handling overlap safely.        |
| `strlcpy`  | Copies a string safely into a buffer, ensuring null-termination.                         |
| `strlcat`  | Concatenates two strings safely, with buffer size checks.                                |
| `toupper`  | Converts a character to uppercase if it is alphabetic.                                   |
| `tolower`  | Converts a character to lowercase if it is alphabetic.                                   |
| `strchr`   | Returns a pointer to the first occurrence of a character in a string.                    |
| `strrchr`  | Returns a pointer to the last occurrence of a character in a string.                     |
| `strncmp`  | Compares a specified number of characters in two strings.                                |
| `memchr`   | Returns a pointer to the first occurrence of a specified byte in a block of memory.      |
| `memcmp`   | Compares two blocks of memory.                                                           |
| `strnstr`  | Returns a pointer to the first occurrence of a substring within a specified length.      |
| `atoi`     | Converts a string to an integer.                                                         |
| `calloc`   | Allocates memory for an array and initializes it to zero.                                |
| `strdup`   | Duplicates a string by allocating new memory for it.                                     |

## Part 2 - Additional functions

|    Name    | Description | 
|:----------:|      --     | 
| `ft_substr`     | Returns a substring from the string `s`, starting from index `start` and with a maximum length `len`.|
| `ft_strjoin`    | Concatenates two strings `s1` and `s2` into a new string and returns it.                             |
| `ft_strtrim`    | Removes specified leading and trailing characters from string `s` and returns the trimmed string.    |
| `ft_split`      | Splits string `s` into an array of strings using a specified delimiter `c`.                          |
| `ft_itoa`       | Converts an integer `n` to a null-terminated string and returns it.                                  |
| `ft_strmapi`    | Applies a function `f` to each character of `s`, creating a new string with the results.             |
| `ft_striteri`   | Applies a function `f` to each character of `s`, modifying the string in place.                      |
| `ft_putchar_fd` | Outputs character `c` to the given file descriptor `fd`.                                             |
| `ft_putstr_fd`  | Outputs string `s` to the given file descriptor `fd`.                                                |
| `ft_putendl_fd` | Outputs string `s` followed by a newline to the given file descriptor `fd`.                          |
| `ft_putnbr_fd`  | Outputs integer `n` to the given file descriptor `fd`.                                               |

## Part 3 - Bonus functions

Subject bonus part aim to teach the chained list to the students. Each function is designed to work with the following struct:

```clike=
typedef struct s_list
{
	void		*content;
	struct s_list	*next;
} t_list;
```

|      Name        | Description                                                                              | 
|:----------------:|------------------------------------------------------------------------------------------|
| `ft_lstnew`      | Creates a new node with a given content and returns a pointer to it.                     |  
| `ft_lstadd_front`| Adds a new node at the beginning of a linked list.                                       |  
| `ft_lstsize`     | Counts the number of nodes in a linked list.                                             |  
| `ft_lstlast`     | Returns the last node in a linked list.                                                  |  
| `ft_lstadd_back` | Adds a new node at the end of a linked list.                                             |  
| `ft_lstdelone`   | Frees the memory of a single node's content using a specified function.                  |  
| `ft_lstclear`    | Frees the memory of all nodes in a linked list using a specified function.               |  
| `ft_lstiter`     | Applies a specified function to each node's content in a linked list.                    |  
| `ft_lstmap`      | Creates a new linked list by applying a function to each node’s content in a source list.|  


## Usage

``make`` to compile.

``clean`` to clean all compiled files without the library file.

``fclean`` to clean all compiled files with the library file.

``re`` to fclean then make.
