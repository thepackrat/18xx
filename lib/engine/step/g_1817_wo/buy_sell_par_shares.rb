# frozen_string_literal: true

require_relative '../g_1817/buy_sell_par_shares'

module Engine
  module Step
    module G1817WO
      class BuySellParShares < G1817::BuySellParShares
        def process_choose(action)
          size = action.choice
          entity = action.entity
          @game.game_error('Corporation size is invalid') unless choices.include?(size)
          corporation = @winning_bid.corporation
          @game.game_error('Corporation in Nieuw Zeeland must be 5 or 10 share corporation') if
            @game.corp_has_new_zealand?(corporation) && size == 2

          size_corporation(size)
          par_corporation if available_subsidiaries(entity).empty?
        end

        def choices
          corporation = @winning_bid.corporation
          super unless @game.corp_has_new_zealand?(corporation)

          super.reject { |size| size == 2 }
        end
      end
    end
  end
end