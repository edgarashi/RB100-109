###MADLIBS_REVISITED###

###Problem###
# Going to use File.read(text_file)
#   (in order to get madlibs)
# Create a repository of
#   adjectives
#   nouns
#   verbs
#   adverbs
#     ARRAY


ADJECTIVES = %w(murderous ugly pretty smelly lazy boisterous aggressive bloody sleepy).freeze
NOUNS = %w(moon fox dog head leg cat Bojack Rupert Lauren Lucas Hunter Hitler Stalin).freeze
VERBS = %w(deviates poops jumps lifts bites licks sprints kills escapes alters demolishes chortles kisses).freeze
ADVERBS = %w(viciously abnormally easily lazily noisily excitedly murderously swimmingly quickly slowly glaringly).freeze


File.open('madlibs.txt') do |file|
  file.each do |line|
    puts format(line, noun:   NOUNS.sample,
                      verb:   VERBS.sample,
                      adjective:    ADJECTIVES.sample,
                      adverb:     ADVERBS.sample)
  end

end
