BEGIN { FS=","
 print "Comparing League Avg's in FG%, Ft%, and 3P% to positional Avg's:"}

 {sumFG +=$5}{sum3P +=$8} {count +=1} {sumFT+=$11}

/PG/ {sumFGPG +=$5} /PG/{sumPG +=1}
/PG/ {sum3PPG +=$8}
/PG/ {sumFTPG +=$11}

/SG/ {sumFGSG +=$5} /SG/{sumSG +=1}
/SG/ {sum3PSG +=$8}
/SG/ {sumFTSG +=$11}

/SF/ {sumFGSF +=$5} /SF/{sumSF +=1}
/SF/ {sum3PSF +=$8}
/SF/ {sumFTSF +=$11}

/PF/ {sumFGPF +=$5} /PF/{sumPF +=1}
/PF/ {sum3PPF +=$8}
/PF/ {sumFTPF +=$11}

/C/ {sumFGC +=$5} /C/{sumC +=1}
/C/ {sum3PC +=$8}
/C/ {sumFTC +=$11}

END {
print"-------------------------------------------------------------------"
print"Avg FG(Field Goal) in the league:" sumFG/count *100"% \n"

print"Avg FG% (Field Goal) in the Nba for PG's is:" sumFGPG/sumPG *100"%"
print"Avg FG% (Field Goal) in the Nba for SG's is:" sumFGSG/sumSG * 100"%"
print"Avg FG% (Field Goal) in the Nba for SF's is:" sumFGSF/sumSF *100"%"
print"Avg FG% (Field Goal) in the Nba for PF's is:" sumFGPF/sumPF * 100"%"
print"Avg FG% (Field Goal) in the Nba for C's is:" sumFGC/sumC *100"%"

print"-------------------------------------------------------------------"
print"Avg 3P% (Three Point) in the league:" sum3P/count *100"% \n"

print"Avg 3P% (Three-Point) in the Nba for PG's is:" sum3PPG/sumPG *100"%"
print"Avg 3P% (Three-Point) in the Nba for SG's is:" sum3PSG/sumSG * 100"%"
print"Avg 3P% (Three-Point) in the Nba for SF's is:" sum3PSF/sumSF *100"%"
print"Avg 3P% (Three-Point) in the Nba for PF's is:" sum3PPF/sumPF * 100"%"
print"Avg 3P% (Three-Point) in the Nba for C's is:" sum3PC/sumC *100"%"

print"-------------------------------------------------------------------"
print"Avg FT% (Free Throw) in the league:" sumFT/count * 100"% \n"

print"Avg FT% (Free Throw) in the Nba for PG's is:" sumFTPG/sumPG *100"%"
print"Avg FT% (Free Throw) in the Nba for SG's is:" sumFTSG/sumSG * 100"%"
print"Avg FT% (Free Throw) in the Nba for SF's is:" sumFTSF/sumSF *100"%"
print"Avg FT% (Free Throw) in the Nba for PF's is:" sumFTPF/sumPF * 100"%"
print"Avg FT% (Free Throw) in the Nba for C's is:" sumFTC/sumC *100"%"
}
