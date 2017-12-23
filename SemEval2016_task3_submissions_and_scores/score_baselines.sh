###
### Description: Scoring script for the baselines for SemEval-2016 Task 3
### Author: Preslav Nakov
### Last modified: February 26, 2016
###

bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test-subtaskA.xml.subtaskA.relevancy _baseline/subtask_A_baseline_random.txt
bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test.xml.subtaskB.relevancy _baseline/subtask_B_baseline_random.txt
bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test.xml.subtaskC.relevancy _baseline/subtask_C_baseline_random.txt
bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-MD-test.xml.subtaskD.relevancy _baseline/subtask_D_baseline_random.txt

bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test-subtaskA.xml.subtaskA.relevancy _baseline/subtask_A_baseline_true.txt
bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test.xml.subtaskB.relevancy _baseline/subtask_B_baseline_true.txt
bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test.xml.subtaskC.relevancy _baseline/subtask_C_baseline_true.txt
bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-MD-test.xml.subtaskD.relevancy _baseline/subtask_D_baseline_true.txt

bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test-subtaskA.xml.subtaskA.relevancy _baseline/subtask_A_baseline_false.txt
bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test.xml.subtaskB.relevancy _baseline/subtask_B_baseline_false.txt
bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test.xml.subtaskC.relevancy _baseline/subtask_C_baseline_false.txt
bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-MD-test.xml.subtaskD.relevancy _baseline/subtask_D_baseline_false.txt
