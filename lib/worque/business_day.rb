module Worque
  module BusinessDay
    extend self

    def next(date)
      shift(date, 1)
    end

    def previous(date)
      shift(date, -1)
    end

    private

    def shift(date, inc)
      loop do
        date += inc
        break unless weekend?(date)
      end
      date
    end

    def weekend?(date)
      date.wday == 0 || date.wday == 6
    end
  end
end
