  1. SemanticZ

  2. Sofia University

  3. Todor Mihaylov, tbmihailov@gmail.com

  4. Submission, i.e., ZIP file name
     SemanticZ.zip

  5. System specs

  - 5.1 Core approach
 The current submission presents results from our primary system for SemEval 2016 Task 3, Subtask A.
Our approach examines the problem as a classification task and ranks the comments depending on their probability to be classified as Good. In our approach, we treat both Bad and Potentially Useful comments as Bad. 
We use mainly features based on semantic similarity obtained from semantic vectors of the question and comment text data. We also include comment and question metadata such as text length and order in the thread. We scale our features in the 0 to 1 range and train our model using Liblinear. 

  - 5.2 Supervised or unsupervised
	supervised

  - 5.3 Important/interesting/novel features used
	semantic vectors

  - 5.4 Important/interesting/novel tools used
	word2vec

  - 5.5 Significant data pre/post-processing
	scaling

  - 5.6 Other data used (outside of the provided)
	no

  - 5.7 Did you participate in SemEval-2015 task 3?
	no

  6 References (if applicable)
	N/A
