# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Added 01
# actor = Actor.new({
#   first_name: "Benedict",
#   last_name: "Cumberbatch",
#   known_for: "Sherlock"
# })
# actor.save

# Added 02
# actor = Actor.new({
#   first_name: "Viola",
#   last_name: "Davis",
#   known_for: "Star Trek First Contact"
# })
# actor.save

# actor = Actor.new({
#   first_name: "Anthony",
#   last_name: "Mackie",
#   known_for: "Altered Carbon"
# })
# actor.save

# actor = Actor.new({
#   first_name: "Lee",
#   last_name: "Dong-wook",
#   known_for: "Hell is Other People"
# })
# actor.save




############## MOVIE SEEDS ##############

movie = Movie.new({
  title: "Apostle",
  year: 2018,
  plot: "For his follow-up to his two action epics, The Raid and The Raid 2, director Gareth Evans dials back the hand-to-hand combat but still keeps a few buckets of blood handy in this grisly supernatural horror tale. Dan Stevens stars as Thomas Richardson, an early 20th century opium addict traveling to a cloudy island controlled by a secretive cult that's fallen on hard times. The religious group is led by a bearded scold named Father Malcolm (Michael Sheen) who may or may not be leading his people astray. Beyond a few bursts of kinetic violence and some crank-filled torture sequences, Evans plays this story relatively down-the-middle, allowing the performances, the lofty themes, and the windswept vistas to do the talking. It's a cult movie that earns your devotion slowly, then all at once."
})
movie.save

movie = Movie.new({
  title: "1922",
  year: 2017,
  plot: "With all the adaptations of Stephen King's celebrated novels rolling into theaters recently, it's easy to forget that the wildly prolific horror writer also has a stockpile of untapped short stories for IP-hungry producers to choose from. 1922, a folksy riff on Edgar Allen Poe's 'The Tell-Tale Heart' starring Thomas Jane as a farmer who kills his wife, draws its plot from a novella in the 2010 collection Full Dark, No Stars, but it's just as rich and complex as the more famous films based on longer King tales. Director Zak Hilditch has a keen grasp of how to wring tension from the material, keeping his camera focussed on Jane's anguished mug as the situation grows more dire and cruel. Plus, there are so many rats in this movie. Seriously, watch out, Willard."
})
movie.save

movie = Movie.new({
  title: "The Ritual",
  year: 2017,
  plot: "How many times can four unsuspecting chumps trek through uncharted, shadowy woods before learning that one should never trek through uncharted, shadowy woods? Let's hope there's no answer. Director David Bruckner rewires the 'cabin in the woods' premise to tell the story of four friends grieving the murder of their fifth, and the Swedish backpacking adventure that shotguns their asses into the mouth of Hell. Overgrown with atmosphere, creepy corpse art, and a monstrous presence well-worth the tapered, Jaws-like reveal, The Ritual questions of faith and fate with a wicked sense of what makes horror brutality so entertaining."
})
movie.save

movie = Movie.new({
  title: "Concussion",
  year: 2015,
  plot: "While conducting an autopsy on former NFL football player Mike Webster (David Morse), forensic pathologist Dr. Bennet Omalu (Will Smith) discovers neurological deterioration that is similar to Alzheimer's disease. Omalu names the disorder chronic traumatic encephalopathy and publishes his findings in a medical journal. As other athletes face the same diagnosis, the crusading doctor embarks on a mission to raise public awareness about the dangers of football-related head trauma."
})
movie.save