# Encoding-a-protein-sequence-using-Hierarchical-and-kmeans-to-identify-patients-with-kidney-failure

# Encoding a protein sequence 
 

Amino acids are organic compounds containing amine and carboxyl functional groups, along with a side chain (R group). Many amino acids are known but only 20 commonly appear in the genetic code. They are Alanine (A), Glycine (G), Isoleucine (I), Leucine (L), Proline (P), Valine (V), Phenylalanine (F), Tryptophan (T), Tyrosine (Y), Aspartic Acid (D), Glutamic Acid (E), Arginine (R), Histidine (H), Lysine (K), Serine (S), Threonine (T), Cysteine (C), Methionine (M), Asparagine (N) and Glutamine (Q).

A protein’s primary structure is the linear sequence of amino acids, and a protein sequence is typically denoted as a string of letters, listing the amino acids starting at the amino-terminal end through to the carboxyl-terminal end. For example, a protein sequence containing 10 amino acids would look like MPGSVHALMC. The corresponding amino acids for this protein sequence are Methionine, Proline, Glycine, Serine, Valine, Histidine, Alanine, Leucine, Methionine, and Cysteine. Another example of a protein sequence containing 9 amino acids is QEFVRGHFY. An important step towards analyzing protein sequences is to numerically encode them.

 

NB: a Matlab program to automatically encode any given protein sequence containing an arbitrary number of amino acids. This code should be able to handle missing or unknown data as well.  


# Hierarchical and k-means clustering
 

Renal function, in nephrology, is an indication of the kidney's condition and its role in renal physiology. Estimated glomerular filtration rate (eGFR) describes the flow rate of filtered fluid through the kidney. The severity of chronic kidney disease (CKD) is described by six stages that are defined based on the eGFR value. For example, if eGFR is above 90 mL/min/1.73 m2, then the individual is expected to have normal kidney function. On the other hand, if eGFR is less than 15 mL/min/1.73 m2, then the individual is expected to have kidney failure. For more info, please see: https://en.wikipedia.org/wiki/Renal_function
 

# Datasets used Download ‘dataset3.csv'. select SBP, DBP, Hb, WBC, Platelet, BUN, and Creatinine and save them as part of your pattern matrix. The size of the pattern matrix should be 50x7.  Write a Matlab script that uses the best clustering technique to identify patients with kidney failure using just the data from the pattern matrix.


Also, read the data within egfr column as another variable. Encode the values in the egfr variable as follows. Assign label ‘1’ if egfr is equal to or less than 15, and label ‘0’ if egfr is greater than 15. Use this encoded data for plotting and validating your clustering technique.
