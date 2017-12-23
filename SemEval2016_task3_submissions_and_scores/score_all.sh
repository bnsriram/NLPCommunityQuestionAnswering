###
### Description: Scoring script for all results for SemEval-2016 Task 3
### Author: Preslav Nakov
### Last modified: February 26, 2016
###

find . -name subtask_A_primary.txt -exec bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test-subtaskA.xml.subtaskA.relevancy {} \;
find . -name subtask_A_contrastive1.txt -exec bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test-subtaskA.xml.subtaskA.relevancy {} \;
find . -name subtask_A_contrastive2.txt -exec bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test-subtaskA.xml.subtaskA.relevancy {} \;

find . -name subtask_B_primary.txt -exec bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test.xml.subtaskB.relevancy {} \;
find . -name subtask_B_contrastive1.txt -exec bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test.xml.subtaskB.relevancy {} \;
find . -name subtask_B_contrastive2.txt -exec bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test.xml.subtaskB.relevancy {} \;

find . -name subtask_C_primary.txt -exec bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test.xml.subtaskC.relevancy {} \;
find . -name subtask_C_contrastive1.txt -exec bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test.xml.subtaskC.relevancy {} \;
find . -name subtask_C_contrastive2.txt -exec bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-QL-test.xml.subtaskC.relevancy {} \;

find . -name subtask_D_primary.txt -exec bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-MD-test.xml.subtaskD.relevancy {} \;
find . -name subtask_D_contrastive1.txt -exec bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-MD-test.xml.subtaskD.relevancy {} \;
find . -name subtask_D_contrastive2.txt -exec bash _scripts/run_scorer.sh _gold/SemEval2016-Task3-CQA-MD-test.xml.subtaskD.relevancy {} \;

find . -name "subtask_A_primary.txt.score" -exec grep -H Official {} \; | perl -p -e 's/\.txt\.score:\*\*\* Official score \(MAP for SYS\):/\t/' | perl -p -e 's/^\.\///' | perl -p -e 's/\//\t/' |sort -k3 -n -r > results_subtask_A_primary.txt
find . -name "subtask_B_primary.txt.score" -exec grep -H Official {} \; | perl -p -e 's/\.txt\.score:\*\*\* Official score \(MAP for SYS\):/\t/' | perl -p -e 's/^\.\///' | perl -p -e 's/\//\t/' |sort -k3 -n -r > results_subtask_B_primary.txt
find . -name "subtask_C_primary.txt.score" -exec grep -H Official {} \; | perl -p -e 's/\.txt\.score:\*\*\* Official score \(MAP for SYS\):/\t/' | perl -p -e 's/^\.\///' | perl -p -e 's/\//\t/' |sort -k3 -n -r > results_subtask_C_primary.txt
find . -name "subtask_D_primary.txt.score" -exec grep -H Official {} \; | perl -p -e 's/\.txt\.score:\*\*\* Official score \(MAP for SYS\):/\t/' | perl -p -e 's/^\.\///' | perl -p -e 's/\//\t/' |sort -k3 -n -r > results_subtask_D_primary.txt


find . -name "subtask_A_*.txt.score" -exec grep -H Official {} \; | perl -p -e 's/\.txt\.score:\*\*\* Official score \(MAP for SYS\):/\t/' | perl -p -e 's/^\.\///' | perl -p -e 's/\//\t/' |sort -k3 -n -r > results_subtask_A_all.txt
find . -name "subtask_B_*.txt.score" -exec grep -H Official {} \; | perl -p -e 's/\.txt\.score:\*\*\* Official score \(MAP for SYS\):/\t/' | perl -p -e 's/^\.\///' | perl -p -e 's/\//\t/' |sort -k3 -n -r > results_subtask_B_all.txt
find . -name "subtask_C_*.txt.score" -exec grep -H Official {} \; | perl -p -e 's/\.txt\.score:\*\*\* Official score \(MAP for SYS\):/\t/' | perl -p -e 's/^\.\///' | perl -p -e 's/\//\t/' |sort -k3 -n -r > results_subtask_C_all.txt
find . -name "subtask_D_*.txt.score" -exec grep -H Official {} \; | perl -p -e 's/\.txt\.score:\*\*\* Official score \(MAP for SYS\):/\t/' | perl -p -e 's/^\.\///' | perl -p -e 's/\//\t/' |sort -k3 -n -r > results_subtask_D_all.txt

### Check for errors
find . -name "*score" -exec grep -H -i error {} \;

### Create the tables
find . -name "subtask_A_*.txt.score" -exec grep -H "ALL SCORES:" {} \; | perl -p -e 's/\.txt\.score:ALL SCORES:/\t/' | perl -p -e 's/^\.\///' | perl -p -e 's/\/subtask_A_/\-/' | sort -k1 > results_subtask_A.tab
find . -name "subtask_B_*.txt.score" -exec grep -H "ALL SCORES:" {} \; | perl -p -e 's/\.txt\.score:ALL SCORES:/\t/' | perl -p -e 's/^\.\///' | perl -p -e 's/\/subtask_B_/\-/' | sort -k1 > results_subtask_B.tab
find . -name "subtask_C_*.txt.score" -exec grep -H "ALL SCORES:" {} \; | perl -p -e 's/\.txt\.score:ALL SCORES:/\t/' | perl -p -e 's/^\.\///' | perl -p -e 's/\/subtask_C_/\-/' | sort -k1 > results_subtask_C.tab
find . -name "subtask_D_*.txt.score" -exec grep -H "ALL SCORES:" {} \; | perl -p -e 's/\.txt\.score:ALL SCORES:/\t/' | perl -p -e 's/^\.\///' | perl -p -e 's/\/subtask_D_/\-/' | sort -k1 > results_subtask_D.tab

### Generate LaTeX tables
cat results_subtask_A.tab \
   | sort -k8 -n -r | perl _scripts/number_column_k.pl -k 7 -t -m \
   | sort -k7 -n -r | perl _scripts/number_column_k.pl -k 6 -t -m \
   | sort -k6 -n -r | perl _scripts/number_column_k.pl -k 5 -t -m \
   | sort -k5 -n -r | perl _scripts/number_column_k.pl -k 4 -t -m \
   | sort -k4 -n -r | perl _scripts/number_column_k.pl -k 3 -t \
   | sort -k3 -n -r | perl _scripts/number_column_k.pl -k 2 -m -t \
   | sort -k2 -n -r | perl _scripts/number_column_k.pl -k 1 -m \
   | perl _scripts/make_latex_table.pl \
       > results_subtask_A.tex

cat results_subtask_B.tab \
   | sort -k8 -n -r | perl _scripts/number_column_k.pl -k 7 -t -m \
   | sort -k7 -n -r | perl _scripts/number_column_k.pl -k 6 -t -m \
   | sort -k6 -n -r | perl _scripts/number_column_k.pl -k 5 -t -m \
   | sort -k5 -n -r | perl _scripts/number_column_k.pl -k 4 -t -m \
   | sort -k4 -n -r | perl _scripts/number_column_k.pl -k 3 -t \
   | sort -k3 -n -r | perl _scripts/number_column_k.pl -k 2 -m -t \
   | sort -k2 -n -r | perl _scripts/number_column_k.pl -k 1 -m \
   | perl _scripts/make_latex_table.pl \
       > results_subtask_B.tex

cat results_subtask_C.tab \
   | sort -k8 -n -r | perl _scripts/number_column_k.pl -k 7 -t -m \
   | sort -k7 -n -r | perl _scripts/number_column_k.pl -k 6 -t -m \
   | sort -k6 -n -r | perl _scripts/number_column_k.pl -k 5 -t -m \
   | sort -k5 -n -r | perl _scripts/number_column_k.pl -k 4 -t -m \
   | sort -k4 -n -r | perl _scripts/number_column_k.pl -k 3 -t \
   | sort -k3 -n -r | perl _scripts/number_column_k.pl -k 2 -m -t \
   | sort -k2 -n -r | perl _scripts/number_column_k.pl -k 1 -m \
   | perl _scripts/make_latex_table.pl \
       > results_subtask_C.tex

cat results_subtask_D.tab \
   | sort -k8 -n -r | perl _scripts/number_column_k.pl -k 7 -t -m \
   | sort -k7 -n -r | perl _scripts/number_column_k.pl -k 6 -t -m \
   | sort -k6 -n -r | perl _scripts/number_column_k.pl -k 5 -t -m \
   | sort -k5 -n -r | perl _scripts/number_column_k.pl -k 4 -t -m \
   | sort -k4 -n -r | perl _scripts/number_column_k.pl -k 3 -t \
   | sort -k3 -n -r | perl _scripts/number_column_k.pl -k 2 -m -t \
   | sort -k2 -n -r | perl _scripts/number_column_k.pl -k 1 -m \
   | perl _scripts/make_latex_table.pl \
       > results_subtask_D.tex

mv *.txt *.tab *.tex _results/

