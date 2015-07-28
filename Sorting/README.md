This report outlines the performance of the following algorithms: insertion sort, merge sort, and quick sort. While each algorithm has standard asymptotic running times their behavior is greatly influenced by what type of input they receive. The application for running these sorting methods utilized several methods that do not directly influence the running of the algorithms. Rather these extra components assist in formatting the number sets, counting comparisons and operations, and presenting the data. As a result the algorithms may experience higher operation counts than they would otherwise. The following sections assume the following:
list [ ]= the sequence of numbers provided as input 
n = number of elements in the provided array (list)
Insertion Sort
	The insertion sort algorithms behavior was very predictable and standard. The core of the comparisons and operations occur in the inner loop of the function with the exception of one operation occurring following the inner loop in each iteration. When provided a sorted list as input exactly n-1 comparisons occur no matter what size the input is making it the best-case scenario. The worst-case scenario occurs when the list[ ] is in reverse order. In reverse order the algorithm’s comparisons and operations count increase seemingly at an excellerating rate. With random input the count for both comparisons and operations fall right between the counts for sorted and reverse lists. Due to insertion sort’s straightforward functionality when list items are already sorted it does not perform unnecessary operations making it a great algorithm for lists that are already sorted for the most part.
Results:
Size 10 (Random):  
"30 operations performed" "20 comparisons performed"
Size 100 (Random):
"2484 operations performed" "2385 comparisons performed"
Size 1000 (Random):
"245351 operations performed" "244352 comparisons performed"
Size 10 (Reverse):
"45 operations performed" "36 comparisons performed"
Size 100 (Reverse):
"4950 operations performed" "4851 comparisons performed"
Size 1000 (Reverse):
"499490 operations performed" "498491 comparisons performed"
Size 10 (Sorted):
"9 operations performed" "0 comparisons performed"
Size 100 (Sorted):
"99 operations performed" "0 comparisons performed"
Size 1000 (Sorted):
"999 operations performed" "0 comparisons performed"
Merge Sort
	The merge sort algorithms running time appeared to be most effected by the size of the input. Whether lists are sorted, in reverse order, or random impacts the end count for operations and comparisons very little.  Sorted lists were once again the best-case scenario and in this case the random list was the worst case. In this implementation of merge sort the running times of the algorithm were slower than the standard n*(lg n) and closer to 6*(n*(lg n)). While the size of the array was the key factor in how many more comparisons and operations occurred no matter the size these counts stayed within the boundary of approximately 6*(n*(lg n)). Since merge sort functions by splitting arrays to create new one and then merging those back together a sorted list will still undergo a considerable amount of comparisons and operations when the list is already sorted, unlike insertion sort. Furthermore, the size of the array is the most principal factor in how many times the array and sub-arrays must be partitioned and merged back together and it is during these portions in which the comparisons and operations count increase most significantly. 
Results:
Size 10 (Random):  
"30 operations performed" "20 comparisons performed"
Size 100 (Random):
"2484 operations performed" "2385 comparisons performed"
Size 1000 (Random):
"245351 operations performed" "244352 comparisons performed"
Size 10 (Reverse):
"94 operations performed" "27 comparisons performed"
Size 100 (Reverse):
"1490 operations performed" "547 comparisons performed"
Size 1000 (Reverse):
"21480 operations performed" "8742 comparisons performed"
Size 10 (Sorted):
"66 operations performed""15 comparisons performed"
Size 100 (Sorted):
"1028 operations performed" "316 comparisons performed"
Size 1000 (Sorted):
"13860 operations performed" "4932 comparisons performed"
Quick Sort
Quick sort is the most effective algorithm applied when dealing with large input sizes. With smaller inputs its operations and comparisons counts are still very good but whether they are more effective than other algorithms is dependent on the ordering of the list. Quick Sort’s functionality is significantly improved when the provided array is randomized. Reverse order and sorted arrays lead to identical comparison and operations counts where as the counts for randomized arrays is significantly lower. Despite this the increased in running time is minimally impacted by both the order and the input size in comparison to merge sort and insertion sort.
Results:
Size 10 (Random):  
"52 operations performed" "27 comparisons performed"
Size 100 (Random):
"1046 operations performed" "841 comparisons performed"
Size 1000 (Random):
"12530 operations performed" "10510 comparisons performed"
Size 10 (Reverse):
"73 operations performed" "45 comparisons performed"
Size 100 (Reverse):
"5248 operations performed" "4950 comparisons performed"
Size 1000 (Reverse):
"502498 operations performed" "499500 comparisons performed"
Size 10 (Sorted):
"73 operations performed" "45 comparisons performed"
Size 100 (Sorted):
"5248 operations performed" "4950 comparisons performed"
Size 1000 (Sorted):
"495948 operations performed" "492980 comparisons performed

