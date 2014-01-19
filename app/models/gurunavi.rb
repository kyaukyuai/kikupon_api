module Gurunavi
        class Image
                include HappyMapper

                tag 'image_url'
                element :shop_image1, String
                element :shop_image2, String
        end

        class PR
                include HappyMapper

                tag 'pr'
                element :pr_short, String
                element :pr_long, String
        end

        class Access
                include HappyMapper

                tag 'access'
                element :line, String
                element :station, String
                element :station_exit, String
                element :walk, String
                element :note, String
        end

        class Rest
            include HappyMapper

            tag "rest"
            element :id, String
            element :name, String
            element :name_kana, String
            element :latitude, Float
            element :longitude, Float
            element :category, String
            element :url, String
            element :url_mobile, String
            has_many:image_url, Image
            has_many:pr, PR
            has_many:access, Access
            element :address, String
            element :tel, String
            element :fax, String
            element :opentime, String
            element :holiday, String
            element :budget, String
        end

        class Response
            include HappyMapper

            tag "response"
            element :total_hit_count, Integer
            element :hit_per_page, Integer
            element :page_offset, Integer
            has_many :rest, Rest
        end
end
