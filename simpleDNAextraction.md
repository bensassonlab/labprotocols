# DNA extraction protocol for yeast species identification or Illumina sequencing

This is a mini-prep kit for DNA extractions from 1.5ml of yeast culture and we expect approximately 1ug high molecular DNA with high purity. Note that RNA will still be present, therefore a NanoDrop will not give an indicator of DNA yield, but an agarose gel alongside a high molecular weight ladder or Qubit will work. We have stored these DNA extracts in the -20C freezer for years after initial species identification and obtained good Illumina sequence from them. A high-speed microcentrifuge (e.g. Eppendorf 5424) in good condition (runs at maximum speed should be quiet) is essential for high yield and purity. 

See our Other protocol for much longer DNA extraction and purification for higher yield and purity PacBio sequencing.

## Promega's Wizard® Genomic DNA Purification Kit

[Wizard® Genomic DNA Purification Kit](https://www.promega.com/products/dna-purification-quantitation/genomic-dna-purification/wizard-genomic-dna-purification-kit/) (Catalog number: A1125)
Other reagents:
- 0.5M EDTA (Life Technologies, Catalogue number: AM9260G). Dilute 1:10 for 50mM EDTA.
- lyticase (Sigma, Catalogue number: L2524-50KU). For a 25 units/ul stock, suspend in 2ml UltraPure H2O and dispense into 2x 1ml aliquots, store at -20C


Modified from Promega's protocol for yeast [p13-14](https://www.promega.co.uk/~/media/files/resources/protocols/technical%20manuals/0/wizard%20genomic%20dna%20purification%20kit%20protocol.pdf): 

### Day One
1.  For each strain, inoculate 2.5 ml YPD in 7 ml bijou tubes from single colonies on YPD plates using a sterile inoculation loop. Allow yeasr to grow in the liquid by shaking overnight at 30°C (for at least 20 hours, e.g. 24 hours). We will use 1.4 ml for DNA extraction, and will make two glycerol stocks for the Bensasson lab collection using 500ul for each one.

### Day Two
1.  Using sterile technique, take 1.4ml of each overnight culture and add to a 1.5ml microcentrifuge tube. For two glycerol stocks: also add 500ul of overnight culture to 215ul of sterile 50% glycerol. After the yeast is backed up, there is no need to continue the sterile technique. 
2.  Centrifuge 1.4ml yeast in YPD at high speed (14,000 rpm on eppendorf centrifuge or 16,162g on other) for 2 minutes to pellet the cells.
3.  Remove and discard the supernatant into 10% bleach (or Virkon, or whatever is you Biosafety Level 2 method for yeast disposal)
4.  Pipette to resuspend the pellet in 296µl 50mM EDTA pH 8
5.  Add 4µl Lyticase (25U/ul, diluted stock from Sigma) and incubate overnight at 37°C (no shaking necessary). We used only 100 units of lyticase (Sigma, L2524) in an overnight incubation at 37C to save money (past experiments showed no change in yield with this long incubation time).

### Day Three
1.   Centrifuge the sample at 16,162g for 2 mins
2.   Remove and discard the supernatant
3.   Add 300µl Promega Nuclei Lysis Solution
4.   Add 100µl Promega Protein Precipitation Solution. Stir with the pipette tip and pipette up and down to resuspend the pellet. The combination of Protein Precipitation Solution and Nuclei Lysis Solution makes the mixture cloudy (not the pellet or protein).
5.   Let the sample sit on ice for 5-30 mins
6.   Centrifuge at high speed for 3 mins
7.  Carefully pipette the supernatant to a clean 1.5ml microcentrifuge tube containing 300µl room temperature Isopropanol. Be careful to avoid the protein pellet and leave some residual liquid to avoid contaminating the DNA solution. 
8.  Invert the samples 50 times, and a wispy mass might be visible.
9.  Centrifuge at high speed for 3 mins
10. Carefully pipette off and discard the supernatant without dislodging the pellet. Drain the tube on clean absorbent paper. At this stage you should see a pellet for all samples except negative controls (if you see a pellet in the negatives, then this is probably not DNA and will be purified away in subsequent steps). If the pellet is dislodged during the removal of the supernatant, respin the sample. You may need to leave some residual liquid in the tube to avoid dislodging the pellet (the pellet after the ethanol wash below will be whiter and less easy to dislodge). 
11. Add 300ul of room temperature 70% ethanol and gently invert the tube 20 times to wash the DNA pellet.
12. Centrifuge at 16,162g for 3 mins. Carefully pipette off all the ethanol. Note: the pellet at this stage contains impurities, so the size (or visibility) of the pellet is not an indicator of final yield.
13. Drain the tube on clean absorbent paper, and allow the pellet to air dry for 15 mins.
14. Add 50µl Promega DNA rehydration solution, and gently resuspend the pellet by pipetting.
15. Add 1.5µl of Promega RNase solution (or a 1:2 dilution of the RNase solution from Qiagen i.e. 5.25 units, Qiagen, Cat. no. 19101), and pipette to mix the RNase into each sample. 
16. Incubate at 37°C for 1-2 hours. Vortex for 1 second, and spin quickly to collect liquid.
18. Leave at room temperature overnight, then store DNA extracts in the fridge at 2-8°C until ready to check yield and for ITS PCR. For more long-term storage (after PCR), keep at -20C and avoid frequent freeze thaw cycles.

Check yield of every sample on gel. If you need accurate DNA quantification (not needed for species identification), then the quality and quantity of DNA was assessed by running alongside a high molecular weight ladder (GeneRuler High Range DNA Ladder, SM1351) on a 0.5% agarose gel stained with 1x Gel Red in 1x TAE buffer and using a Qubit fluorometer.


