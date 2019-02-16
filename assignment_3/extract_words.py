# Course Name: CS 324E
# Project Group 4
# Date Created: 2/16/19
# Date Last Modified: 2/16/19

import re

# the following function will place each word on its own line in the string
def AllWords(dict):
    out_str = ""
    for word in dict:
        out_str += word
        out_str += '\n'

    return out_str

# the following function will return a string with every unique word in the file
# word that appears only once
def getUniques(dict):
    lst = []
    # create a dictionary of the frequencies
    for word in dict:
        if dict[word] == 1:
            lst.append(word)
    out_str = "\n".join(lst)
    return out_str

# the following function will map frequency of words to the number of words
# with that frequency
def getWordsFreq(dict):
    freq_dict = {}
    for word in dict:
        # frequency of each word
        freq = dict[word]
        try:
            freq_dict[freq] += 1
        except:
            freq_dict[freq] = 1

    return freq_dict

def main():
    # open up a text file, read in the whole text then convert it to lower case
    in_file = open("Dracula.txt", 'r').read().lower()
    # extract only alphabetic characters
    text = re.findall(r'[a-zA-Z]+', in_file)
    word_dict = {}
    for word in text:
        if word in word_dict:
            word_dict[word] = word_dict.get(word) + 1
        else:
            word_dict[word] = 1

    # function call to get the output dictionary with all words
    allwords = AllWords(word_dict)
    all_words = open("allwords.txt", 'w')
    all_words.write(allwords)
    # function call to get the output dictionary with unique words
    out_str = getUniques(word_dict)
    unique_words = open("uniquewords.txt", 'w')
    unique_words.write(out_str)
    # function call to get the output dictionary with frequency counts
    freq = getWordsFreq(word_dict)
    frequency = open("wordfrequency.txt", 'w')
    # sort the dictionary based on values, increase in frequency
    for word in sorted(freq):
        # write according to frequency
        frequency.write(str(word) + ':' + str(freq[word]) + '\n')

    # close the file
    all_words.close()
    frequency.close()

main()
