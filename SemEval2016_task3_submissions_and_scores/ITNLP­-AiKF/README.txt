  1. Team ID
	 ITNLP-AiKF
  2. Team affiliation
	 Intelligence Technology and Natural Language Processing Laboratory, Harbin Institute of Technology
  3. Contact information
	 bright_fall@sina.com
  4. Submission, i.e., ZIP file name
	 ITNLP-AiKF.zip
  5. System specs

  - 5.1 Core approach
		We use a SVR(Support Vector Regression) model trained on rich features which represent the sentence-sentence pair.
  - 5.2 Supervised or unsupervised
		Supervised
  - 5.3 Important/interesting/novel features used
		Our features include following classes: word2vec-based features, wordnet-based features, topic features, vector features, answer features and word match features,and we use genetic algorithm to do feature selection.
  - 5.4 Important/interesting/novel tools used
		Gensim[1],Stanford CoreNLP[2],WordNet[3],scikit-learn[4]
  - 5.5 Significant data pre/post-processing
                url and special characters removing, stopword filtering, tokenization 
  - 5.6 Other data used (outside of the provided)
		Wikipedia dataset,GloVe[5] word vector,COMPOSES[6] word vector
  - 5.7 Did you participate in SemEval-2015 task 3?
		No
  6 References
	[1] ŘEHŮŘEK, Radim and P. SOJKA. 2010. Software Framework for Topic Modelling with Large Corpora. In Proceedings of LREC 2010 workshop New Challenges for NLP Frameworks. Valletta, Malta: University of Malta, 2010. p. 46--50, 5 pp. ISBN 2-9517408-6-7.
	[2] J. R. Finkel, T. Grenager, and C. Manning. 2005. Incorporating Non-local Information into Information Extraction Systems by Gibbs Sampling. Proceedings of the 43nd Annual Meeting of the Association for Computational Linguistics (ACL 2005), pp. 363-370.
	[3] Fellbaum, Christiane. 2005. WordNet and wordnets. In: Brown, Keith et al. (eds.), Encyclopedia of Language and Linguistics, Second Edition, Oxford: Elsevier, 665-670
	[4] Scikit-learn: Machine Learning in Python, Pedregosa et al., JMLR 12, pp. 2825-2830, 2011.
	[5] J. Pennington, R. Socher, and C. Manning. 2014. Glove: Global vectors for word representation. In Proceedings of the 2014 Conference on Empirical Methods in Natural Language Processing, EMNLP ’14, pages 1532–1543, Doha, Qatar.
	[6] M. Baroni, G. Dinu and G. Kruszewski. 2014. Don't count, predict! A systematic comparison of context-counting vs. context-predicting semantic vectors Proceedings of ACL 2014 (52nd Annual Meeting of the Association for Computational Linguistics), East Stroudsburg PA: ACL, 238-247.