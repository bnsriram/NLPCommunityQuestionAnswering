This is the submission from the team QCRI-2.
We are addressing subtasks A and C.

1. Team ID
QCRI-2

2. Team affiliation
Qatar Computing Research Institute, Hamad Bin Khalifa University, Qatar

3. Contact information
Lluís Màrquez
lmarquez@qf.org.qa

4. Submission, i.e., ZIP file name
QCRI2-submission.zip

5. System specs

  - 5.1 Core approach
* For subtask A: FF Neural Network approach using syntactic and semantic embedded representations of the question and of the comments. The approach works pairwise. Given a triple (Q,C1,C2) the network learns to answer which is the most appropriate answer to Q, either C1 or C2. The pairwise predictions are accumulated for all the pairs in the comment thread and a resulting ranking is obtained. The hidden layer compares Q, C1 and C2 by pairs and the output is implemented as a log-reg classifier. We also use a set of independent features that connect directly to the output layer. This approach is based on the architecture presented in (Guzmán et al., 2015; ACL) for MT evaluation, see below.

* For subtask B, we combine the predictions of our classifier for subtask A with the inverse reciprocal rank of the related questions in the XML file.

  - 5.2 Supervised or unsupervised
Supervised

  - 5.3 Important/interesting/novel features used
Syntactic and semantic embeddings representing the pieces of text (questions and answers)
Features from MT evaluation (BLEU, Meteor, etc.)

  - 5.4 Important/interesting/novel tools used
None; we use the Stanford neural parser, word2vec, Theano, and standard MT tools for MT evaluation.

  - 5.5 Significant data pre/post-processing
Basic pre-processing is done to better tokenize and work with punctuation marks.
No post-processing is applied.

  - 5.6 Other data used (outside of the provided)
We used data from IWSLT to train embedded word vectors.

  - 5.7 Did you participate in SemEval-2015 task 3?
Part of the team participated in SemEval-2015 Task 3 with a very different approach
This team contains two co-organizers of the SemEval-2016 Task 3.
The main author here is Francisco Guzmán.

  6 References (if applicable)

@InProceedings{guzman-EtAl:2015:ACL-IJCNLP,
  author    = {Guzm\'{a}n, Francisco  and  Joty, Shafiq  and  M\`{a}rquez, Llu\'{i}s  and  Nakov, Preslav},
  title     = {Pairwise Neural Machine Translation Evaluation},
  booktitle = {Proceedings of the 53rd Annual Meeting of the Association for Computational Linguistics and the 7th International Joint Conference on Natural Language Processing (Volume 1: Long Papers)},
  month     = {July},
  year      = {2015},
  address   = {Beijing, China},
  publisher = {Association for Computational Linguistics},
  pages     = {805--814},
  url       = {http://www.aclweb.org/anthology/P15-1078}
}

Francisco Guzmán
Lluís Màrquez
Preslav Nakov
