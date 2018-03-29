class Conference < ApplicationRecord
    def index
    @conferences = Conference.all
end
end
