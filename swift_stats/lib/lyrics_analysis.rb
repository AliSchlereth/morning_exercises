class LyricsAnalysis

  def word_count(filename)
    lyric_lines = read_file(filename)
    words = collect_each_unique_word(lyric_lines)
    count_words(words)
  end

  def read_file(filename)
    lyrics = []
    File.read(filename).each_line do |line|
      lyrics << sanatize_line(line)
    end
    lyrics
  end

  def sanatize_line(line)
    line.chomp.gsub!(/\p{P}/, "")
  end

  def collect_each_unique_word(lyric_lines)
    thing = lyric_lines.reduce({}) do |result, line|
      result.merge(analyze_each_word(line))
    end
  end

  def analyze_each_word(line)
    # line.split(" ").group_by do |word|
    #   word.downcase
    # end
    articles = ["a", "the", "in", "on", "an", "at"]
    line.split(" ").reduce({}) do |result, word|
      if result[word.downcase]
        result[word.downcase] += 1
      else
        result[word.downcase] = 1
      end
      result
    end
  end

  def count_words(word_collection)
    word_collection.keys.length
  end





end
