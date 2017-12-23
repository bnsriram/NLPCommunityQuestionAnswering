1. Team ID
SU FMI

2. Team affiliation
Sofia University

3. Contact information
Tsvetomila Mihaylova
tsvetomila.mihaylova@gmail.com

4. Submission, i.e., ZIP file name
su-fmi.zip

5. System specs

- 5.1 Core approach
We approached the problem as a classification task similar to SemEval 2015 Task 3 and afterwards we rank the comments depending on the probability they are classified as Good with. Bad and Potential comments are both treated as Bad in our system.

- 5.2 Supervised or unsupervised
Both.

- 5.3 Important/interesting/novel features used
We employ variety of features such as question and comment metadata; question and comment lexical features; distance measures between the question and comment; text readability measures applied to the question and comment; lexical semantics vectors of the question and comment; features telling us whether a user is a troll, etc.

- 5.4 Important/interesting/novel tools used
We trained our model with LibSVM.
Mallet is used for topic modeling.
Gensim is used for training semantic vectors from the unannotated data from QL.

- 5.5 Significant data pre/post-processing
Linguistic analysis of the text and crawling QL and extracting user data.

- 5.6 Other data used (outside of the provided)
N/A

- 5.7 Did you participate in SemEval-2015 task 3?
Yes.

6 References (if applicable)