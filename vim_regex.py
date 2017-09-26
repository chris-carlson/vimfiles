import pyperclip
import sys

CHANGE_CHARS = ['(', ')', '|', '{', '+', '=', '@', '<', '>', '%']
MODES = ['s', 'r']

num_expected_args = 3;
if len(sys.argv) > num_expected_args:
    raise ValueError('Unknown argument entered')
if len(sys.argv) < num_expected_args:
    raise ValueError('Enter a regex to be converted and \'-s\' for search mode or \'-r\' for rc mode')

input_regex = sys.argv[1]
mode = sys.argv[2][1:]

if mode not in MODES:
    raise ValueError('Mode must be either \'-s\' for search mode or \'-r\' for rc mode')

converted_regex = ''
input_length = len(input_regex)
index = 0
while index < input_length:
    char = input_regex[index]
    if char == '\\' and index < len(input_regex) - 1:
        next_char = input_regex[index + 1]
        if next_char in CHANGE_CHARS:
            converted_regex += next_char
        else:
            converted_regex += char + next_char
        index += 1
    elif char in CHANGE_CHARS:
        if char == '|' and mode == 'r':
            converted_regex += '\\'
        converted_regex += '\\' + char
    elif char == '*' and index < len(input_regex) - 1:
        next_char = input_regex[index + 1]
        if next_char == '?':
            converted_regex += '\\{-}'
            index += 1
        else:
            converted_regex += char
    elif char == '?':
        converted_regex += '\\='
    else:
        converted_regex += char
    index += 1

pyperclip.copy(converted_regex)
