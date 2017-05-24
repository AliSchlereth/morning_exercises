require "minitest/autorun"
require "minitest/pride"
require "./lib/lyrics_analysis"

class LyricsAnalysisTest < Minitest::Test

  def test_it_reads_info_from_a_text_file

  end

  def test_it_returns_a_count
    analysis = LyricsAnalysis.new
    filename = "lyrics.txt"
    count = analysis.word_count(filename)

    assert_instance_of Fixnum, count
  end

end
