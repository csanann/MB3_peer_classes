#file: spec/secret_diary_spec.rb
#test drive 2 classes below
require 'secret_diary'
require 'diary'

RSpec.describe "SecretDiary" do
    let(:diary) { double(:diary, read: "Diary contents") }

    it "starts locked" do
        secret_diary = SecretDiary.new(diary)
        expect { secret_diary.read }.to raise_error("Go away!")
    end

    it "locks and unlocks the diary" do
        #create an SD instance with a diary double, by default= SD should be locked
        secret_diary = SecretDiary.new(diary)
        #call unlock method on sd instance
        secret_diary.unlock
        #expect read method(with value=Diary contents that provided by diary double) return after unlocked the diary, 
        #to read the contents instead of rasing an error
        expect(secret_diary.read).to eq("Diary contents")
        #call lock method to lock the diary
        secret_diary.lock
        #since the diary is locked, calling read should now raise an error with a message given
        expect { secret_diary.read }.to raise_error("Go away!")
    end
end
