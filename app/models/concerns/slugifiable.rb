module Slugifiable
    module InstanceMethods
        def slug
            self.username.to_s.downcase.gsub(" ","-")
        end
    end

    module ClassMethods
        def find_by_slug(slug)
            self.all.find do |user|
                user.slug == slug
            end
        end
    end
end