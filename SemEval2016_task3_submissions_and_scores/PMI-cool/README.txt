1. Team ID
	PMI-cool

2. Team affiliation
	Sofia University

3. Contact information
	Daniel Balchev (dbalchev@gmail.com)

4. Submission, i.e., ZIP file name
	268

5. System specs

- 5.1 Core approach
Learning additional lexicons of words likely to appear in good and in bad answers using strength of association between words and the class of the comment. These lexicons are learned starting with the training data, and then extended on the unannotated data using pointwise mutual information (PMI). The same technique has been used previously by Mohammad & al. (2013) to build lexicons for sentiment analysis, based on a technique originally proposed by Turney (2002).

- 5.2 Supervised or unsupervised
Supervised

- 5.3 Important/interesting/novel features used
	PMI-based automatically bootstrapped lexicons for good/bad comments

- 5.4 Important/interesting/novel tools used
(none)

- 5.5 Significant data pre/post-processing
(none)

- 5.6 Other data used (outside of the provided)
sentiment and personality lexicons

- 5.7 Did you participate in SemEval-2015 task 3?
no

6 References (if applicable)

Saif M. Mohammad, Svetlana Kiritchenko, and Xiaodan Zhu, NRC-Canada: Building the State-of-the-Art in Sentiment Analysis of Tweets. In Proceedings of the seventh international workshop on Semantic Evaluation Exercises (SemEval-2013), June 2013, Atlanta, USA.

Peter D. Turney. 2002. Thumbs up or thumbs down?: Semantic orientation applied to unsupervised classification of reviews. In Proceedings of the 40th Annual Meeting on Association for Computational Linguistics, ACL ’02, pages 417–424, Philadelphia, Pennsylvania.

