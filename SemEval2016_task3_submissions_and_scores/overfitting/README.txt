  1. Team ID
	overfitting
  2. Team affiliation
	University of Waterloo
  3. Contact information
	Hujie Wang
	wanghujie@gmail.com
	+1 5198971683

  4. Submission, i.e., ZIP file name
	submission.zip

  5. System specs

  - 5.1 Core approach
	Modling sentences with the average of its word embeddings.

  - 5.2 Supervised or unsupervised
	
	Supervised(Feedfoward Neural Net) + unsupervised(Learning word embeddings with word2vec)

  - 5.3 Important/interesting/novel features used
	
	Let s_A be the average of word embeddings of sentence A
	Let s_B be the average of word embeddings of sentence B
	
	We used two features: s_A.*s_B, |s.A-S.B| (.* denotes elementwise multiplication) 

  - 5.4 Important/interesting/novel tools used
	
	word2vec

  - 5.5 Significant data pre/post-processing
	
	Removed stopwords, punctuations.
	Grouped words together when they were likely to be a phrase by using
	bigram and trigram

  - 5.6 Other data used (outside of the provided)
	None

  - 5.7 Did you participate in SemEval-2015 task 3?
	No
  6 References (if applicable)
