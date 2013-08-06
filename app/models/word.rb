class Word < ActiveRecord::Base
  def self.anagrams?(query)
    valid = []
    Word.where(length: query.length).find_each(batch_size: 100_000) do |bacon|
        valid << bacon if bacon.term.split('').sort == query.split('').sort
    end

    valid = valid.map do |word|
      word.term
    end

    valid.delete(query)
    valid
  end
end
