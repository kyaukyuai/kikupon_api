class GurunaviResponse
    include HappyMapper
    tag "response"
    element :total_hit_count, Integer
    element :hit_per_page, Integer
    element :page_offset, Integer
    has_many :rest, GurunaviRest
end
