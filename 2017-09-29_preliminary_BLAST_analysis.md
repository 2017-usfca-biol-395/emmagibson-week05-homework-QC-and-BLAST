# Sequence Quality Analysis

Overall, the sequences from this file have about the same level of quality from one to
the other, and all of them are reasonably high quality. Although they do taper off
towards the end of the sequence, that much is to be expected, and there is a decent
amount of high-quality, readable sequence in each file. That said, some of the files
have some minor dips in sequence quality around the middle, but they never dip below 
the yellow margin, so they are still high enough quality to use for sequence
analysis.

# BLAST sequence analysis

## General Results

When I ran my first script to count the total number of each species in all samples,
I found that there were three species that showed up more than a thousand times:
a *Bacteroidetes* endosymbiote of *Metaseiulus occidentalis* (a type of mite), a
gill symbiote for *Solemya pervernicosa* (a type of clam), and *Bartonella*
*washoensis* (a bacterium known to cause meningitus in humans). Next, I wrote a
script that would could the number of occurences of each of these three major 
groups in each sample. What I found was that each sample either only contained a 
large (>100) about of *one* of each of these three groups, or didn't contain a large
amount of any of these three major groups. None of these three major groups was present
in all of the samples, and the only reason there was such a significant amount of them
was because a couple of samples contained large amounts (>100). This finding supports
the original paper's conclusion that the microbes living on one's hands are extremely
unique from person to person.

After running this initial script, I decided to write another to compare the differences 
between bacteria found on male versus female hands. I found that the top three species 
found on male hands - (*Solemya pervernicosa* gill symbiont, *Aquitalea sp. KJ011*, and
*Acidovorax sp.*) ony shared one species with the top three named) species found on 
female hands (*Bartonella washoensis*, Acidovorax sp.**, and *Lupinus angustiflorus*). 
This output, combined with the overall species data, also gave me insight into 
which species were more common on human hands (as opposed to mice) as well. In that 
regard, the only prominent species from the overall samples that was lacking from
the human samples was the *M. occidentalis* symbiote.

## Top Three Species Conclusions

The most common species was the *S. pervernicosa* gill symbiote, which seems like
an odd organism to find on a human hand. Three people and two mice had a large (>200) 
amount of this organism on their hands, and after looking at each of them, the only 
pattern that stands out is that all three people were right-handed males. I cannot make 
any major conclusions with this information, but the most likely explanation I can think 
of is that these people might work together in a marine biology lab, which would explain 
the clam microbes.

The second most common species is *Bartonella washoensis*, a known animal pathogen that 
can cause meningits in humans. Three people and one mouse contained large amounts of 
this bacterium, but there is no clear gender or age pattern. I think it is likeley that 
these people are either sick, or simply carriers. There is also a possibility that the
people who had these microbes on their hands got them from their pets, as *B. washoensis*
is known to be found on common household animals.

The third most common species was an endosymbiote of *Metaseiulus occidentalis*, a type
of mite. These mites are known as predators of the microscopic world, and eat many 
other, more harmful types of microscopic animals. Interestingly, there were only 
two samples that contained this species, both of which were mice and one of which had 
over 800 sequence matches to this bacterium. The fact that this bacterium was only found 
on mice makes me think that the mites were perhaps living there, but it seems like an 
odd place for small predatory insects to live. Even stranger is the fact that two mice 
in particular have large quantities of this bacterium, indicating that the associated 
mites live there, but the mites have not spread to the other mice even though the 
mice were all from the same location. That said, *M. occidentalis* has been found all 
over the world, so it is very likely that it ended up on these computer mice because 
someone who was not part of the study intrduced it to them.


## Male-Female Differences Conclusions

Overall, there were no major differences in the total number of bacteria found on male 
vs female hands, although there were clear differences in which bacteria were common on 
each. As discussed earlier, the *S. pervernicosa* gill symbiote was common only on 
male hands, whereas *B. washoensis* was primarily on female hands. These were also the 
most common species on their respective gender's hands. The next most common bacteria
on male hands was *Aquitalea species KJ011*, which appears to be in a genus of lake and
wetland-associated bacteria. This is especially interesting because it means the top 
two bacteria species on male hands are both associated with aquatic ecosystems, which 
probably indicates more about their professions than their gender. For female hands,
there were only two species that appreared more then a hundred times.

However, it may be difficult to draw conclusions about the impact gender has on hand 
microbes, because just like with the overall data, the prominent species on each 
gender's hands were only prominent because of a small number of individuals with large 
amounts of said bacteria. For example, *Acidovorax species* (a genus know to contain 
plant pathogens) was the second most common bacterium in females and third most common 
in males, but it is only found on *one* male and *one* female. Interestingly, the 
individuals who had this plant pathogen on their hands were also the only humans to 
have *Lupinus angustiflorus*, a type of plant, on their hands as well. This indicates 
that the *Acidovorax* might have been infecting the *L. angustiflorus*, but does not
correlate with the host's gender in a meaningful way. At a glance, the only pattern
that holds true for most individuals of a given gender is the prominence of aquatic 
ecosystem-associated microbes on male hands I discussed previously.
