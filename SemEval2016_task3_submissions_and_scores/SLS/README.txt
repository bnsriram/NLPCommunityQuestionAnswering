1. Team ID: SLS

2. Team affiliation: MIT Computer Science and Artificial Intelligence Lab

3. Contact information: Mitra Mohtarami (mitra@csail.mit.edu)

4. Submission, i.e., ZIP file name: SLS.zip that includes the following files:

README.txt (this file)

subtask_A_primary.txt
subtask_A_contrastive1.txt
subtask_A_contrastive2.txt

subtask_B_primary.txt
subtask_B_contrastive1.txt
subtask_B_contrastive2.txt

subtask_C_primary.txt
subtask_C_contrastive1.txt
subtask_C_contrastive2.txt

subtask_D_primary.txt
subtask_D_contrastive1.txt
subtask_D_contrastive2.txt

5. System specs

- 5.1 Core approach:
English: The following models and their combinations are used for subtasks A, B and C: 

(1) Classifier:
For a given (q,a) pair (or (q,q') for subtask B), various text-based and vector-based features are extracted from question and answer. Then, these features are passed to a SVM classifier and the classifier score is used to rank.  

(2) Long short-term memory with Attention (LSTM): It contains two sequential LSTM in which the first LSTM reads one answer or question, and passes information through hidden units to the second LSTM. The second LSTM then reads the other element (i.e., question) and generates the representation of this pair after the second LSTM. Then, MLP takes this representation as input to classify the relationship of this pair.

(3) Convolutional Neural Network (CNN)
This model is used for subtasks A and C. 

(4) Recurrent Convolutional Neural Network (RCNN)
This model is used only for subtask B. 

Arabic:
extracting text similarity and vector-based features from original question and question-answer pair, running an SVM classifier and using its scores for ranking.

- 5.2 Supervised or unsupervised: Supervised

- 5.3 Important/interesting/novel features used:
English:
Text-based similarity features, Vector-based features, Brown cluster features, Non-negative matrix factorization features, Thread ranking features. 

Arabic:
text-based similarity features common in previous tasks, vector-based features looking at most similar pairs of sentence/word vectors.

- 5.4 Important/interesting/novel tools used:
English:
sklearn for the SVM classification

Arabic:
sklearn for the SVM classification, MADA for morphological analysis

- 5.5 Significant data pre/post-processing:
English:
cleaning data like eliminate URLs, stop words

Arabic:
morphological analysis with MADA, keyword extraction with TextRank

- 5.6 Other data used (outside of the provided):
English:
Google News dataset (GoogleNews-vectors-negative300.bin.gz) to compute the vector representations of the words.

Arabic:
Arabic Gigaword and Arabic raw data from 2016 for generating word vectors

- 5.7 Did you participate in SemEval-2015 task 3? Yes
===============================================
According to the 5.1, the submitted files are:

TaskA:
subtask_A_primary.txt: a combination of Classifier + LSTM + CNN
subtask_A_contrastive1.txt: a combination of Classifier + CNN
subtask_A_contrastive2.txt:  a combination of Classifier + LSTM

TaskB:
subtask_B_primary.txt: a combination of Classifier + RCNN
subtask_B_contrastive1.txt: a combination of Classifier + LSTM + RCNN
subtask_B_contrastive2.txt: RCNN

TaskC:
subtask_C_primary.txt: a combination of LSTM + Classifier + IR
subtask_C_contrastive1.txt: a combination of CNN + LSTM + Classifier + IR
subtask_C_contrastive2.txt: a combination of CNN + Classifier + IR

TaskD:
subtask_D_primary.txt: a combination system built by combining scores from several systems: contrastive1, contrastive2, and two more systems similar to contrastive2 with different pre-processing.
subtask_D_contrastive1.txt: baseline system similar to our 2015 system with the following differences: (a) features are computed both between original question and related question, and between original question and related answer; (b) only text-based and vector-based features were used, no rank-based or metadata-based features; (c) SVM prediction scores are used to rank the candidates; (d) "Relevant" (potential) question-answer pairs are ommited from the training data.
subtask_D_contrastive2.txt: same as contrastive1, with the following differences: (a) preprocessing with affix separation using MADA, then running TextRank to extract keywords; (b) all training data used.



