# frozen_string_literal: true

require 'unicode/emoji'

class EmojiService
  def initialize
    @all_emojis_hash = Unicode::Emoji.list
  end

  def random_emoji
    random_category = @all_emojis_hash.keys.sample
    random_sub_category = @all_emojis_hash[random_category]
    random_sub_sub_category_emojis = random_sub_category[random_sub_category.keys.sample]
    randomly_chosen_emoji = random_sub_sub_category_emojis.sample

    randomly_chosen_emoji || random_emoji
  end

  def random_emojis(number = 3)
    random_emojis = []
    number.times { random_emojis << random_emoji }
    random_emojis.join(' ')
  end
end

