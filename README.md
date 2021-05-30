We often come across scenarios where the query is humongous, and we will have to list down the source tables used in the query in order to ensure the data in the tables are updated before running the query. Though the task is easy, it is highly manual and strenuous. I have come up with '.bat' codes that could help you with this. This can, however, be simplified and customized if need be. 

Steps:
1. Create a file called code.txt and copy paste your code/query there.
2. Save the attached 3 batch files in the same location as code.txt
3. In command prompt,go to the location where the files are placed and just type query1.
4. You can find the list of tables in the file op.txt(that gets automatically created).
