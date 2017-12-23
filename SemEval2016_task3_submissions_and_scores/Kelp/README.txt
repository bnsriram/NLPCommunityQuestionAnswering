SUBMISSION DESCRIPTION
1.     Team ID
        	Kelp
        	
2.     Team affiliation
        	University of Roma, Tor Vergata
	Qatar Computing Research Institute, HBKU
        	
3.     Contact information
        	Simone Filice
        	filice@info.uniroma2.it
        	University of Roma, Tor Vergata
        	
4.     Submission, i.e., ZIP file name
        	Kelp_SemEval2016-Task3-Submission.zip
        	
5.     System apects:
Several kernel-based SVM classifiers used for the different subtasks:

Subtask A
Each pair (question, comment) generates an example for a binary SVM learning algorithm, where the positive label is associated with a “good” comment and the remaining labels are associated with the “potential” and “bad” comments. Our algorithm adopts a kernel K(o_1, o_2) between examples. Each example  o_i  is a candidate pair of the form (question and comment). K is a linear combination of kernels, i.e., PTK(q1,q2) + PTK(c1,c2) + LK(feats1, feats2) + LK(ws_features1, ws_features2) where:
	•	PTK()  is the Partial Tree Kernel [Moschitti et al, 2006] using the schema for pairs of text described in [Filice et al, 2015]. It is applied to flat trees reflecting shallow syntactic representation of both the question and the comment;
	•	LK(feats1, feats2) is a linear kernel applied to hand coded features “feats” that include (i) some similarity features between the question and the answer and (ii) some heuristic features (iii) some thread based features [Barrón-Cedeño et al, 2015]; 
	•	LK(ws_features1, ws_features2) is a linear kernel applied to semantic similarity features between q_i and c_i. The similarities are computed using Word Embeddings [Mikolov et al, 2013] generated from the Qatar Living dataset made available in the Semeval2015 Task 3.
Given a question with its set of k comments, k pairs are formed, classified and the resulting classification scores are used to rank the comments. 

Submissions Subtask A 
subtask_A_primary.txt: the SVM classifier is trained using the complete K_taskA(o_1, o_2)

Subtask B
An original question (oq) is paired with one candidate related question (rq). Each (oq, rq) is an example to be classified by a binary SVM, where the positive label reflects a “PerfectMatch” or “Relevant” question, while the remaining “Irrelevant” class is associated with a negative label. The algorithm uses a kernel K(o_1, o_2) between examples, i.e., question pairs. K is a linear combination of specific kernels: 
K_taskB(o_1, o_2) = SPTK((oq_1,oq_2),(rq_1,rq_2)) + LK(feats1, feats2) + LK(ws_features1, ws_features2) + LK(TaskAfeat_1, TaskAfeat_2)
where
	•	SPTK is a Smoothed Partial Tree Kernel [Croce et al, 2011] adopted as described in [Filice et al, 2015] to operate over tree pairs. Each (flat) tree reflects the shallow syntactic information derived from each question;
	•	a linear kernel (LK) between hand coded features that reflects (i) the similarity between the two questions as discussed in [Filice et al, 2015]; (ii) the absolute and relative rank of the related question w.r.t. the original question as provided by the IR system; (iii) the similarity between oq and the complete answer thread of rq;
	•	a linear kernel (LK) between features derived by measuring the semantic similarity between both questions represented in a Word Space, i.e. a Word Embedding [Mikolov et al, 2013] generated from the Qatar Living dataset made available in the SemEval 2015 Task 3.
	•	in order to evaluate if the comments associated with the rq are valid also for oq, we apply the SVM classifier derived for the Task A. For each comment, we estimate the relatedness between both oq_i and rq_j (according to the classifier trained for the SubtaskA). This allows to obtain a distribution of scores reflecting the relatedness between each question and the thread associated with rq. We thus apply a linear kernel between synthetic features TaskAfeat derived from these distributions, e.g., the correlation or the number of positive classifications. 
Each question pair (oq,rq) generates an example for the SVM classifier and the resulting classification score is used to rank the different related questions.

Submissions for Subtask B:
	•	subtask_B_primary.txt: the SVM classifier is trained using the complete K_taskB(o_1, o_2)=SPTK(oq_1,oq_2) * SPTK(rq_1,rq_2)+SPTK(oq_1,rq_2) * SPTK(oq_2,rq_1) + LK(feats1, feats2) + LK(ws_features1, ws_features2) + LK(TaskAfeat_1, TaskAfeat_2)
	•	subtask_B_contrastive1.txt: the SVM classifier is trained using the complete K_taskB(o_1, o_2)=SPTK(oq_1,oq_2) + SPTK(rq_1,rq_2) + LK(feats1, feats2) + LK(ws_features1, ws_features2) + LK(TaskAfeat_1, TaskAfeat_2)
	•	subtask_B_contrastive2.txt: the SVM classifier is trained using the kernel adopted in the contrastive measure number 1 by neglecting the contribution of LK(TaskAfeat_1, TaskAfeat_2)


Subtask C
The association between the original question (oq) and one of the possible related comments (rc) from a related question (rq) is modeled as a classification task, extending the kernel adopted in Subtask A. In particular,
K_taskC(o1, o2)=K_taskA(o1, o2) + LK(rank_rq1, rank_rq2) + LK(TaskABfeat_1, TaskABfeat_2)+LK(feats1, feats2)
where:
	•	K_taskA(o1, o2) is the kernel adopted in subtask A
	•	LK(rank_rq1, rank_rq2) ia linear kernel (LK) over a vector reflecting the absolute and relative rank of the involved related questions
	•	LK(feats1,feats2) is a linear kernel operative over features include (i) similarity metrics between o and c (ii) heuristic features as in task A, (iii) thread-based features as in task A (iv) similarity measures between o and r (as in task B) (v) similarity metrics between o and the complete answer thread of r (as in task B).
	•	LK(TaskABfeat_1, TaskABfeat_2) is a linear kernel operating over the stacked information derived by applying the classifiers obtained in the previous subtasks. In order to evaluate if the comments associated with the related question are valid also for the original question, we apply the SVM classifier derived both from the Subtask A and Subtask B. We thus apply the previous classifiers to derive the following classification scores
	◦	sA = score from the subtask A classifier over the pair <rq,rc>
	◦	sB = score from the subtask B classifier over the pair <oq,rq>
	◦	sC = score from the subtask A classifier over the pair <oq,rc>
A synthetic representation TaskABfeat is obtaining by considering the values of sA, sB, sC, the sign of sA, sB, sC, the result of sign(sA)*sign(sB), min(sA, sB), max(sA, sB) and mean(sA,sB).
Given a question oq and the set of k candidate comments associated with rq, a set of k examples is produced by varying the c comment. These examples are classified and the resulting classification scores are used to rank the comments. 


Submissions Subtask C
	•	subtask_C_primary.txt: the SVM classifier is trained using the complete K_taskC(o_1, o_2) and a tradeoff parameter of SVM is set to 5. The model submitted as subtask_B_contrastive1 has been used in our stacking policy. 
	•	subtask_C_contrastive1.txt: the SVM classifier is trained using the complete K_taskC(o_1, o_2) by neglecting the contribution of LK(TaskABfeat_1, TaskABfeat_2), with a tradeoff parameter of SVM is set to 5. The model submitted as subtask_B_primary has been used in our stacking policy. 
	•	subtask_C_contrastive2.txt: the SVM classifier is trained using the complete K_taskC(o_1, o_2) is used and a tradeoff parameter of SVM is set to 2. The model submitted as subtask_B_contrastive1 has been used in our stacking policy.

	
5.1 Core approach
Kernel based learning applied over discrete structures reflecting the shallow syntactic information from texts and other features derived from a manual feature engineering activity. Moreover, the classifiers for Subtask B and C are enforced with the results obtained in the previous subtasks: the kernel used in Subtask B is enriched with the results obtained in Subtask A, while the kernel used in Subtask C is enriched with the results obtained in Subtask A and Subtask B.

5.2 Supervised or unsupervised
	•	It can be considered Semi-supervised as based over a supervised learning algorithm operating on several representation of the input data, where part of the representation is derived from the unsupervised analysis of an unlabeled corpus (i.e. the Word Embedding obtained from the Qatar Living dataset.

 
5.3 Important/interesting/novel features used
	•	A stacking schema is adopted so that classifiers for Subtask B and C are enforced with the results obtained in the previous subtasks. 
	•	We extend the method proposed in [Barrón-Cedeño et al, 2015] by adopting several features (also derived from Word Embeddings). 
	•	We adopted the kernel between tree (i.e. questions/comments) pairs introduced in [Filice et al,2015] also adopting further kernels, such as the SPTK defined in [Croce et al, 2011]. 

 
5.4 Important/interesting/novel tools used
	•	The SVM learning algorithms and the kernel functions have been implemented within Kelp (Kernel based Learning Platform) described in [Filice et al, 2015b]
	•	The Word2Vec [Mikolov, 2013] tool is used to derive Word Embedding
 
5.5 Significant data pre/post-processing
	•	The pipeline made available by the QCRI has been adopted to preprocess texts and to apply POS tagging.
 
5.6 Other data used (outside of the provided)
	•	The Qatar Living corpus
 
5.7 Did you participate in SemEval-2015 task 3?
	•	Yes
 
6.     References (if applicable)
	•	Alessandro Moschitti, Efficient Convolution Kernels for Dependency and Constituent Syntactic Trees. In Proceedings of the 17th European Conference on Machine Learning, Berlin, Germany, 2006.
	•	[Croce et al, 2011] D Croce, A Moschitti, R Basili. Structured lexical similarity via convolution kernels on dependency trees. In Proceedings of the Conference on Empirical Methods in Natural Language Processing, 2011
	•	[Mikolov et al, 2013] Tomas Mikolov, Kai Chen, Greg Corrado, and Jeffrey Dean. Efficient Estimation of Word Representations in Vector Space. In Proceedings of Workshop at ICLR, 2013.
	•	[Filice et al, 2015b] S Filice, G Castellucci, D Croce, R Basili. KeLP: a Kernel-based Learning Platform for Natural Language Processing. In Proceeding of ACL-IJCNLP 2015, 19
	•	[Filice et al, 2015] S Filice, G Martino, A Moschitti. Structural representations for learning relations between pairs of texts. In proceedings of Association for Computational Linguistics (ACL)
	•	[Barrón-Cedeño et al 2015] Alberto Barrón-Cedeño, Simone Filice, Giovanni Da San Martino, Shafiq Joty, LluísMàrquez, Preslav Nakov and Alessandro Moschitti. Thread-Level Information for Comment Classification in Community Question Answer. In Proceedings of the 53rd Annual Meeting of the Association for Computational Linguistics, ACL 2015.
