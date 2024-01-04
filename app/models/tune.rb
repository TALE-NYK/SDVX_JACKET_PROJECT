class Tune < ApplicationRecord
    enum difficulty: {
        all: 0,
        novice: 1,
        advanced: 2,
        exhaust: 3,
        maximum: 4,
        infinite: 5,
        gravity: 6,
        heavenly: 7,
        vivid: 8,
        exceed: 9
    }
end
