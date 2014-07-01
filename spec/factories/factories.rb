FactoryGirl.define do
  factory :quarter do
    sequence(:name) { |i| "Kwatera #{i}" }
    sequence(:short_name) { |i| "k#{i}" }
  end
  
  factory :grave do
    number '666'
    grave_type 'single'
    description 'lorem ipsum'
    family_name 'Milanowicz'
    notes 'zażółć gęślą jaźń'
    
    quarter
  end
  
  factory :person do
    first_name 'Alicja'
    last_name 'Grzybowska'
    family_name 'Piwowarczyk'
    description 'lorem ipsum'
    lived 67
    raw_record 'qwerty | asdf | 826538'
    notes 'zażółć gęślą jaźń'
    
    association :grave
  end
end