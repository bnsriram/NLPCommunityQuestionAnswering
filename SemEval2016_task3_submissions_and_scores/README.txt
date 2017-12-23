==============================================================================
Submissions and scores for SemEval-2016 Task 3: "Community Question Answering"
February, 2016
==============================================================================


[1] CONTENTS OF THE DISTRIBUTION

The distribution is organized into the following directory structure:

* _gold/
  Contains the gold labels for the test data for all subtasks

* _results/
  Contains the summarized scoring results for all subtasks: (i) MAP for primary runs only, (ii) MAP for all runs, (iii) all seven scores for all runs in a TAB format, and (iv) all seven scores for all runs as a LaTeX table. There is also a PDF (SemEval2016_task3_results.pdf) showing slightly edited versions of the LaTeX tables + information about the participating teams and their affiliations.

* _baseline/
  Contains the results for scoring the baselines.

* _scorer/
  Slightly modified code of the scorer to output also an ALL SCORES line

* _scripts/
  The scripts for scoring used by score_all.sh (+resort_subtaskD.pl, which we used in order to resort submissions for subtask D that were wrongly ordered)
  
* The remaining directories contain the submissions and the short system descriptions for all participants.

* The script score_all.sh scores all submissions and also generates the files in _results/, except for the PDF file.


[2] LICENSE

This distribution is directly downloadable from the official SemEval-2016 Task 3 website
  http://alt.qcri.org/semeval2016/task3/index.php?id=data-and-tools

Licensing: 
- the script and all above files are free for general research use 
- you should use the following citation in your publications whenever using this resource:

@InProceedings{nakov-EtAl:2016:SemEval,
  author    = {Nakov, Preslav  and  M\`{a}rquez, Llu\'{i}s  and  Moschitti, Alessandro and Magdy, Walid  and  Hamdy Mubarak  and  Abed Alhakim Freihat   and   Glass, Jim  and  Randeree, Bilal},
  title     = {{SemEval}-2016 Task 3: Community Question Answering},
  booktitle = {Proceedings of the 10th International Workshop on Semantic Evaluation},
  series    = {SemEval '16},
  month     = {June},
  year      = {2016},
  address   = {San Diego, California},
  publisher = {Association for Computational Linguistics},
}


[3] SUBTASKS

For ease of explanation, here we list the subtasks of SemEval-2016 Task 3:

* Subtask A (English): Question-Comment Similarity
  Given a question and the first 10 comments in its question thread, rerank these 10 comments according to their relevance with respect to the question.

* Subtask B (English): Question-Question Similarity
  Given a new question (aka original question) and the set of the first 10 related questions (retrieved by a search engine), rerank the related questions according to their similarity with the original question. 

* Subtask C (English): Question-External Comment Similarity -- this is the main English subtask.
  Given a new question (aka the original question) and the set of the first 10 related questions (retrieved by a search engine), each associated with its first 10 comments appearing in its thread, rerank the 100 comments (10 questions x 10 comments) according to their relevance with respect to the original question.

* Subtask D (Arabic): Rerank the correct answers for a new question.
  Given a new question (aka the original question) and the set of the first 30 related questions (retrieved by a search engine), each associated with one correct answer (which typically have a size of one or two paragraphs), rerank the 30 question-answer pairs according to their relevance with respect to the original question. 


[4] DATA FORMAT

   The scorer takes as input a <GOLD_FILE> and a <PREDICTIONS_FILE>.

   Both files should contain one prediction per line in the following format:
   
          "<Question_ID>   <Answer_ID>   <RANK>   <SCORE>   <LABEL>" 
   
   where tabulation is used as a separator.

   The file should be sorted by <Question_ID>, then by <Answer_ID>
   (this is already the order in the provided XML files, so no additional sorting is needed).
   
   <Question_ID> refers to
      - RELQ_ID in subtask A
      - ORGQ_ID in subtasks B and C

   <Answer_ID> refers to
      - RELC_ID in subtasks A and C
      - RELQ_ID in subtask B

   <RANK> is a positive integer, reflecting the rank of the answer with respect to the question.
   In fact, the value of <RANK> is not used in scoring (and one can put there any integer);
   it is only included in the file for better readability of the <GOLD_FILE>.

   <SCORE> is a real number reflecting the relevance of the answer with respect to the question.
   A higher value means higher relevance of the answer with respect to the question.
   In the <PREDICTIONS_FILE>, this value is used to determine the ranking of the answers
   (in descending order) with respect to the question, and thus is key for calculating MAP.
   In the <GOLD_FILE>, the value reflects the score in the IR baseline, i.e.,
      - using the original comment order (in the thread) for subtask A
      - using the original IR ranking of the related questions for subtask B
      - using the original IR ranking of the related questions (as in B),
        and then listing the comments for each of them (as in A) for subtask C

   <LABEL> is the gold label in the <GOLD_FILE>,
   and it is the system-predicted label in the <PREDICTIONS_FILE>. 
   There are only two possible values: 'true' and 'false'.
   Here is how the labels for the different subtasks map to these values:
      - subtasks A and B: 'true' covers 'Good', 'false' covers 'Bad' and 'PotentiallyUseful'
      - subtask B: 'true' covers 'PerfectMatch' and 'Relevant, 'false' covers 'Irrelevant'


   Here is an example <GOLD_FILE> for subtask C:
      
      Q104  Q104_R1_C1  101 0.0099009900990099  true
      Q104  Q104_R1_C2  102 0.00980392156862745 false
      Q104  Q104_R1_C3  103 0.00970873786407767 true
      Q104  Q104_R1_C4  104 0.00961538461538462 false
      Q104  Q104_R1_C5  105 0.00952380952380952 false
      Q104  Q104_R1_C6  106 0.00943396226415094 false
      Q104  Q104_R1_C7  107 0.00934579439252336 false
      Q104  Q104_R1_C8  108 0.00925925925925926 false
      Q104  Q104_R1_C9  109 0.00917431192660551 false
      Q104  Q104_R1_C10 110 0.00909090909090909 false
      Q104  Q104_R6_C1  601 0.00166389351081531 false
      Q104  Q104_R6_C2  602 0.00166112956810631 false
      Q104  Q104_R6_C3  603 0.00165837479270315 false
              ...

   Here is an example <PREDICTIONS_FILE> for subtask C:

      Q104  Q104_R1_C1  0 0.341656072212579 false
      Q104  Q104_R1_C2  0 1.49980396096993  true
      Q104  Q104_R1_C3  0 0.192743311247135 false
      Q104  Q104_R1_C4  0 1.74093045405415  true
      Q104  Q104_R1_C5  0 1.15460701359022  true
      Q104  Q104_R1_C6  0 1.57159851767935  true
      Q104  Q104_R1_C7  0 1.38438830691728  true
      Q104  Q104_R1_C8  0 0.737532539840842 true
      Q104  Q104_R1_C9  0 1.74780815372362  true
      Q104  Q104_R1_C10 0 1.49019019690013  true
      Q104  Q104_R6_C1  0 0.892091818186223 true
      Q104  Q104_R6_C2  0 0.707456406186751 true
      Q104  Q104_R6_C3  0 1.46503926400508  true
              ...


[5] SCORES CALCULATED

   The scorer calculates and outputs the following scores:

     A. Classification scores
        - accuracy
        - precision (P), recall (R), and F1-score with respect to the positive ('true') class
   
     B. Overall ranking scores
        - mean average precision (MAP) -- the official score
        - average recall (AvgRec)
        - MRR (mean reciprocal rank)

     C. Ranking scores at each ranking position r (1 <= r <= 10)
        - REC-1: percentage of questions with at least 1 correct answer in the top @X positions
        - ACC: accuracy, i.e., number of correct answers retrieved at rank @X normalized by the rank and the total number of questions
   
   The official score for the competition for all subtasks is MAP.


[6] CREDITS

Task Organizers:

    Preslav Nakov, Qatar Computing Research Institute, HBKU
    Lluís Màrquez, Qatar Computing Research Institute, HBKU
    Alessandro Moschitti, Qatar Computing Research Institute, HBKU
    Walid Magdy, Qatar Computing Research Institute, HBKU
    James Glass, CSAIL-MIT
    Bilal Randeree, Qatar Living

Task website: http://alt.qcri.org/semeval2016/task3/

Contact: semeval-cqa@googlegroups.com
  
Acknowledgments:
  1. We would like to thank Hamdy Mubarak, Abdelhakim Freihat, and Salvatore Romeo from QCRI who have contributed a lot to the data preparation.
  2. We also thank Salvatore Romano for reformatting the data from SemEval-2015 Task 3.
  3. This research is developed by the Arabic Language Technologies (ALT) group at Qatar Computing Research Institute (QCRI), HBKU, within the Qatar Foundation in collaboration with MIT. It is part of the Interactive sYstems for Answer Search (Iyas) project.
