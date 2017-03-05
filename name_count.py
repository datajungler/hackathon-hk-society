import pandas as pd
import nltk

# Import Raw Data
nameList = list()
df = pd.read_csv("source_data/org.csv", delimiter=";")

# Extract words from the full name
for data in df['name_e']:
    try:
        print nltk.word_tokenize(data)
        nameList.extend(nltk.word_tokenize(data))

    except UnicodeDecodeError:
        print "error"

    except TypeError:
        print "error"



nameDf = pd.Series(nameList)
nameDf.to_csv("output/name_count/name_word.csv", index=False)

# exclude the special character
exDf = pd.read_csv("source_data/exclude_list.csv")
nameDf = pd.read_csv("output/name_word.csv")
cleanWordList = list()
for nm in nameDf.values:
    if nm not in exDf.values:
        cleanWordList.extend(nm)

# output the result
pd.Series(cleanWordList).to_csv("output/name_count/name_word_clean.csv",index=False)
