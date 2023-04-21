#file: lib/secret_diary.rb

class SecretDiary
    def initialize(diary)
        @diary = diary
        @locked = true
    end

    def read
    #2.raises the error "Go away!" if the diary is locked
    #returns the diary's contents if the diary is unlocked
    #1. the diary starts off locked
    raise "Go away!" if @locked
    @diary.read
    end

    def lock
        #locks the diary
        #returns nothing
        @locked = true
    end

    def unlock
        #unlocks the diary
        #returns nothing
        @locked = false
    end
end
