require "minitest/autorun"
require "minitest/pride"
require "./lib/lyrics_analysis"
require "pry"
class LyricsAnalysisTest < Minitest::Test

  def test_it_reads_info_from_a_text_file

  end

  def test_it_returns_a_count
    analysis = LyricsAnalysis.new
    filename = "lyrics.txt"
    count = analysis.word_count(filename)

    assert_instance_of Fixnum, count
  end

  def test_read_file_returns_an_array_of_lines
    analysis = LyricsAnalysis.new
    filename = "lyrics.txt"

    assert_instance_of Array, analysis.read_file(filename)
  end

  def test_collect_each_unique_word_creates_a_hash
    analysis = LyricsAnalysis.new
    filename = "lyrics.txt"
    lines = analysis.read_file(filename)

    assert_instance_of Hash, analysis.collect_each_unique_word(lines)
  end

  def test_analyze_each_word_returns_a_hash_of_unique_words
    analysis = LyricsAnalysis.new
    line = "This is a line a line"
    word_count = analysis.analyze_each_word(line)

    assert_equal word_count.keys, word_count.keys.uniq
  end

end
