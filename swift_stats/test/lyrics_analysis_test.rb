require "minitest/autorun"
require "minitest/pride"
require "./lib/lyrics_analysis"
require "pry"

class LyricsAnalysisTest < Minitest::Test

  def test_it_reads_info_from_a_text_file
    analysis = LyricsAnalysis.new
    filename = "test_text.txt"
    lyrics = analysis.read_file(filename)

    assert_instance_of Array, lyrics
    assert_equal "Here are some words", lyrics[0]
  end

  def test_it_returns_a_count
    analysis = LyricsAnalysis.new
    filename = "lyrics.txt"
    count = analysis.word_count(filename)

    assert_instance_of Fixnum, count
  end

  def test_it_returns_a_count_short
    analysis = LyricsAnalysis.new
    filename = "test_text.txt"
    count = analysis.word_count(filename)

    assert_instance_of Fixnum, count
    assert_equal 8, count
  end

  def test_read_file_returns_an_array_of_lines
    analysis = LyricsAnalysis.new
    filename = "test_text.txt"
    lines = analysis.read_file(filename)

    assert_instance_of Array, lines
    assert_instance_of String, lines[0]
  end

  def test_collect_each_unique_word_creates_a_hash
    analysis = LyricsAnalysis.new
    filename = "test_text.txt"
    lines = analysis.read_file(filename)

    assert_instance_of Hash, analysis.collect_each_unique_word(lines)
  end

  def test_analyze_each_word_returns_a_hash_of_unique_words
    analysis = LyricsAnalysis.new
    line = "This is a line a line"
    word_count = analysis.analyze_each_word(line)

    assert_equal word_count.keys, word_count.keys.uniq
  end

  def test_sanatize_line_removes_punctuation_and_new_lines
    analysis = LyricsAnalysis.new
    line = "This is! a /line,\ a line."

    assert_equal "This is a line a line", analysis.sanatize_characters(line)
  end

  def test_analyze_each_word_filters_for_articles
    analysis = LyricsAnalysis.new
    line = "This is a line a line"
    word_collection = {"this" => 1,
                       "line" => 2}

    assert_equal word_collection, analysis.analyze_each_word(line)
  end

end
