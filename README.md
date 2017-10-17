#
# NPLCommunityQuestionAnswering

This is a NLP project assignment that is being given from the http://alt.qcri.org/semeval2016/ conference

## Getting Started - Description

Community Question Answering

A. Question-Comment Similarity: given a question from a question-comment thread, rank the comments according to their relevance (similarity) with respect to the question (this corresponds to the last year's task: SemEval-2015 Task 3).

B. Question-Question Similarity: given the ne​w question, rerank all similar questions retrieved by a search engine (assuming that the answers to the similar questions should be answering the new question as well).


### References

http://alt.qcri.org/semeval2016/task3/

What things you need to install the software and how to install them

```
Python packages - pandas

pip install package-name 

```
### Data XML 

* cqa_task3.xml -> Contains the xml data for the first XML dataset ~ Question -> Comments 
* cqa_task3.json -> Converted XML to json
* The code for data cleaning is in [Datacleaning1.ipynb](https://github.com/bnsriram/NLPCommunityQuestionAnswering/blob/master/Datacleaning1.ipynb)



* Q2Q.xml -> Contains the xml data for the second XML dataset ~ Org -> Question -> Comments
* Q2Q.json -> Converted XML to json 
* The code for data cleaning is in [Datacleaning11.ipynb](https://github.com/bnsriram/NLPCommunityQuestionAnswering/blob/master/Datacleaning11.ipynb)


## Authors

* **Murali Krishnan** - [murali129](https://github.com/murali129)
* **Naveen** - [naveenkvn](https://github.com/naveenvkn)
* **Sriram Jegadeesh** - [sriramjegs](https://github.com/sriramjegs)


## Acknowledgments

* Thanks to http://alt.qcri.org/semeval2016/task3/ for giving us a opportunity to work on such dataset
