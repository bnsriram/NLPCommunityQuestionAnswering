  1. Team ID: QU-IR

  2. Team affiliation: Qatar University

  3. Contact information: 
     Rana Malhas, rana.malhas@qu.edu.qa
     Dr. Marwan Torki, mtorki@qu.edu.qa
     Dr. Tamer Elsayed, telsayed@qu.edu.qa
     
  4. Submission, i.e., ZIP file name: QU-IR-QA-MRR.zip

  5. System specs

  - 5.1 Core approach
  	Learning to rank setting trained over the provided training data for subtask D.

  - 5.2 Supervised or unsupervised
  	Supervised

  - 5.3 Important/interesting/novel features used
	We built word embedding representation based on Word2vec. The word embedding is based on the training and development data. 
	In all we have around 60k arabic stems represented as vectors each in 100 dimensions. 
	We built the feature representation of a question answer pair as the average vector of the stems appeared on the question answer pair.
	This will produce a 100 features for every question answer pair. These 100 dimensional vectors are fed to our learining module.
	
  - 5.4 Important/interesting/novel tools used
 	RanLib http://sourceforge.net/p/lemur/wiki/RankLib/
 	Gensim http://radimrehurek.com/gensim/

  - 5.5 Significant data pre/post-processing

  - 5.6 Other data used (outside of the provided)

  - 5.7 Did you participate in SemEval-2015 task 3? No

  6 References (if applicable)
    - Surdeanu, M., Ciaramita, M. and Zaragoza, H., 2008, June. Learning to Rank Answers on Large Online QA Collections. In ACL (pp. 719-727).
    - Chen, R.C., Spina, D., Croft, W.B., Sanderson, M. and Scholer, F., 2015, October. Harnessing Semantics for Answer Sentence Retrieval. In Proceedings of the Eighth Workshop on Exploiting Semantic Annotations in Information Retrieval (pp. 21-27). ACM.
    - Mikolov, T., Chen, K., Corrado, G. and Dean, J., 2013. Efficient estimation of word representations in vector space. arXiv preprint arXiv:1301.3781.
    
