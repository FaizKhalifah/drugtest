install:
	pip install --upgrade pip && \
		pip install -r requirements.txt 

format : 
	black *.py

train :
	python train.py

eval : 
	echo "##model metrics" > report.md 
	cat ./results/metrics.txt >> report.md
	
	echo '\n##confusion matrix plot' >> report.md
	echo '![confusion matrix](results/confusion_matrix.png)' >> report.md

	cml comment create report.md