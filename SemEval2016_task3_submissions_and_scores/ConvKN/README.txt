1. Team ID
  ConvKN

2. Team affiliation
Qatar Computing Research Institute
University of Trento

3. Contact information
Giovanni Da San Martino
gmartino@qf.org.qa

4. Submission, i.e., ZIP file name

5. System specs

Supervised models combining ad-hoc features 

- 5.1 Core approach

 Kernel-based binary classification. Ranking composed according to the scores.



- 5.2 Supervised or unsupervised
  
  Supervised

- 5.3 Important/interesting/novel features used

  Task A

  - For the CRF contrastive run, we use a fully-connected CRF with the features from other two submissions to consider all pair relationships.

  Primary: test.TaskAsemeval.tk_qcri.Primary.scores
  Contrastive 1: test.TaskAsemeval.CRF.Contrastive1.scores
  Contrastive 2: test.TaskAsemeval.qcri.Contrastive2.scores 

  Task B
  - Beside the direct comparison between questions, we try to assess their similarity by considering similarities against comments as well as task A scores.
    PRIMARY: TaskB-Primary-train.PtkRELSimRankScoresqcTaskB.klp.scores
    CONTRASTIVE: TaskB-contrastive-train.PtkRELSimRankScoresqcTaskB.klp.scores same system as the primary submission but trained on train-part2 + dev

  Task C
  - We use the same features used in [2] with linear kernel and a RBF kernel over the ranking of the related question and the scores from sub-task A.
     PRIMARY: TaskC-Primary-test-trained-with-train-part2+dev.TaskCsemeval15FeaturesLinearRankScoreRbf.scores trained on train part 2 and dev only
     CONTRASTIVE 1: TaskC-Contrastive-test.TaskCsemeval15FeaturesLinearRankScoreRbf.scores trained on both training + dev 
     CONTRASTIVE 2: TaskC-Contrastive2-test.AandBruleComnination.scores rule-based system based on predictions of tasks A and B

  Task D:
  - We use similarity based on embeddings in a linear SVM for contrastive 1
  - The above model plus Tree Kernels applied to Arabic trees (question to question kernel) for the primary submission 
  - For the second contrastive run, we add additional MT features.   

  Primary: feat_mit_TreeKernels_Primary.scores
  Contrastive 1: feat_mit_c_tuned_contrastive.scores
  Contrastive 2: feat_mit_bleu_contrastive.scores
  
- 5.4 Important/interesting/novel tools used
  
  Kelp [1] for ML in B and C
  SVM-Light-TK [3] for ML for A and D

- 5.5 Significant data pre/post-processing

Tokenization, POS, parsing. 


- 5.6 Other data used (outside of the provided)

Out-of-the-box word2vec


- 5.7 Did you participate in SemEval-2015 task 3?

Yes

6 References (if applicable)

[1] Simone Filice, Giuseppe Castellucci, Danilo Croce, Roberto Basili, Giovanni Da San Martino and Alessandro Moschitti. KeLP: a Kernel-based Learning Platform, Workshop on Machine Learning Open Source Software 2015: Open Ecosystems. Lille, France on the 10th of July, 2015. (http://mloss.org/software/view/606/).
[2] Nicosia, Massimo, et al. "QCRI: Answer selection for community question answeringexperiments for Arabic and English." Proceedings of the 9th International Workshop on Semantic Evaluation, SemEval. Vol. 15. 2015.
[3] Alessandro Moschitti, Efficient Convolution Kernels for Dependency and Constituent Syntactic Trees. In Proceedings of the 17th European Conference on Machine Learning, Berlin, Germany, 2006.
