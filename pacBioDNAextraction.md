# DNA extraction protocol for yeast PacBio sequencing

## Promega's Wizard® Genomic DNA Purification Kit

[Wizard® Genomic DNA Purification Kit](https://www.promega.com/products/dna-purification-quantitation/genomic-dna-purification/wizard-genomic-dna-purification-kit/) (Catalog number: A1125)

Note: This is a very detailed protocol because it is actually just our standard lab protocol x 4 with a couple of extra steps to increase purity for PacBio. **We got good DNA sequence but could have used more DNA, so in future I would do 8 preps for each sample (instead of 4).**

Modified from Promega's protocol for yeast [p13-14](https://www.promega.co.uk/~/media/files/resources/protocols/technical%20manuals/0/wizard%20genomic%20dna%20purification%20kit%20protocol.pdf): 

Some of the changes to our standard protocol might have been unnecessary e.g. We spun samples at 16,162g and for longer than suggested: for 10 minutes after the addition of Nuclei Lysis Solution (Promega) and Protein Precipitation Solution (Promega); for 10 minutes after DNA precipitation with isopropanol; and for 5 minutes after washing the DNA pellet with 70% ethanol. I am not sure the extra time on spins is really necessary if you know your centrifuge is good: we had just had problems with a lab centrifuge, which lowered DNA quality and yield.

### Day One
1.  For each strain, inoculate 7ml YPD in 30ml universal tubes from single colonies on YPD plates using a sterile inoculation loop. Incubate at overnight at 30°C (for at least 20 hours, e.g. 24 hours).

### Day Two
1.  Take 1.4ml of each overnight culture and add to a 1.5ml microcentrifuge tube. Do this a total of 4 times for each strain (so there are 4 microcentrifuge tubes for each strain).  
2.  Centrifuge at 16,162g for 2 minutes to pellet the cells.
3.  Remove and discard the supernatant into a yeast waste jar containing Virkon solution (make this up with Virkon powder and water to a deep pink colour)
4.  Pipette to resuspend the pellet in 293µl 50mM EDTA pH 8
5.  Add 10µl Lyticase (10U/ul, diluted stock from Sigma) and incubate overnight at 37°C. We used only 100 units of lyticase (Sigma, L2524) in an overnight incubation at 37C to save money (past experiments showed no change in yield).

### Day Three
1.   Centrifuge the sample at 16,162g for 2 mins
2.   Remove and discard the supernatant
3.   Add 300µl Promega Nuclei Lysis Solution, and pipette to resuspend the pellet
4.   Add 100µl Promega Protein Precipitation Solution and pipette to resuspend the pellet
5.   Let the sample sit on ice for 5 mins
6.   Centrifuge at 16,162g for 10 mins
7.  Carefully pipette the supernatant to a clean 1.5ml microcentrifuge tube containing 300µl Isopropanol. Be careful to avoid the protein pellet and leave some residual liquid to avoid contaminating the DNA solution. 
8.  Invert the samples 50 times, and a visible mass will form for most samples.
9.  Centrifuge at 16,162g for 10 mins
10. Carefully pipette off and discard the supernatant without dislodging the pellet. Drain the tube on clean absorbent paper. At this stage you should see a pellet for all samples except negative controls (if you see a pellet in the negatives, then this is probably not DNA and will be purified away in subsequent steps). If the pellet is dislodged during the removal of the supernatant, respin the sample. You may need to leave some residual liquid in the tube to avoid dislodging the pellet. 
11. Add 300ul of room temperature 70% ethanol and gently invert the tube 20 times to wash the DNA pellet.
12. Centrifuge at 16,162g for 5 mins. Carefully pipette off all the ethanol. Note: the pellet at this stage contains impurities, so the size (or visibility) of the pellet is not an indicator of final yield.
13. Drain the tube on clean absorbent paper, and allow the pellet to air dry for 15 mins.
14. Add 50µl Promega DNA rehydration solution, and gently resuspend the pellet by pipetting.
15. Add 1.5µl of a 1:2 dilution of the RNase solution from Qiagen (i.e. 5.25 units, Qiagen, Cat. no. 19101), and pipette to mix the RNase into each sample. 
16. Incubate at 37°C for 1 hour. Vortex for 1 second, and spin quickly to collect liquid.
17. Incubate at 65°C for 45 mins. Vortex for 1 second, and spin quickly to collect liquid.
18. Leave at room temperature overnight, then store DNA extracts in the fridge at 2-8°C until ready for ethanol precipitation (could be several days later).

Check yield of every sample on gel. If all samples give good yield for each strain, then it is ok to pool them all. Discard any samples where 1µl is not visible on a gel.

### Day Four

POOL SAMPLES FOR EACH STRAIN AND REMOVE RNA FROM PURIFIED DNA

(modified from [Qiagen's protocol](https://www.qiagen.com/us/resources/resourcedetail?id=a9e6a609-4600-4b03-afbd-974318590ce5&lang=en))

I am pretty sure any ethanol precipitation protocol would be fine here. I only used the protocol and "Protein Precipitation Solution" from Qiagen because it was to hand.
1. DNA extracts were cooled for 15 minutes on ice, spun at 16,162g for 10 minutes and the supernatants of the four extracts for each strain were pooled in a fresh tube for each strain. This gave a final volume of approximately 180ul for each strain.
2. Add 20ul (or other amount) of Qiagen's DNA Hydration solution to make the final volume of DNA extract up to 200ul for each strain.
3. Add 3ul RNase A Solution (Qiagen), mix by pipetting, quick 1 sec vortex and spin. Incubate at 37°C for 1 hour. Transfer to ice.
4. Add 100ul Qiagen Protein Precipitation Solution (0.5 volume), 400ul 96-100% Ethanol from freezer (2 volumes). 
5. Mix by inverting 50 times (visible mass formed in all except negatives). Leave on ice for 15 mins.
6. Centrifuge at 16,162g for 10 mins.
7. Carefully, pipette off supernatant
8. Add 600ul room temperature 70% ethanol (3 volumes)
9. Centrifuge at 16,162g for 3 mins.
10. Carefully, pipette off and discard supernatant and air dry the pellet for 15 minutes
11. Resuspend pellet in 110ul Qiagen DNA Hydration Solution (1xTE) by gentle pipetting.
12. Incubation at 37C for 1.5 hours to fully dissolve the DNA. 
13. Quick spin, pipette to mix, 15 minutes at room temperature.
14. Centrifuge at 16,162g for 10 mins in order to pellet any impurities that might have precipitated together with the DNA, because the DNA should now be fully dissolved and will no longer form a pellet.
15. Transferred the supernatants to new tubes (even though no pellets were visible at this stage).

The quality and quantity of DNA was assessed by running alongside a high molecular weight ladder (GeneRuler High Range DNA Ladder, SM1351) on a 0.5% agarose gel stained with 1x Gel Red in 1x TAE buffer, by NanoDrop, and using a Qubit fluorometer.

