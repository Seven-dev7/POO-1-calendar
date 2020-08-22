class User
    attr_accessor :email, :age
    @@all_users = []

    def initialize(email, age)
        @email = email
        @age = age
        @@all_users << self
    end

    def self.all
        @@all_users
    end

    def self.find_by_email(email)
        if @@all_users.select { |user| user.email == email}
            return @@all_users.select { |user| user.email == email}
        else
            return @@all_users
        end
    end
end