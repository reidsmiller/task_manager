require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'instance methods' do
    describe '#laundry?' do
      it 'returns true when the title is laundry' do
        task = Task.create!(title: 'laundry', description: 'clean clothes')

        expect(task.laundry?).to be true
      end

      it 'returns true when the description is laundry' do
        task = Task.create!(title: 'Clean my clothes', description: 'laundry')
    
        expect(task.laundry?).to be true
      end

      it 'returns false when the description and title do not inlcude laundry' do
        task = Task.create!(title: 'Clean my clothes', description: 'clean clothes')
    
        expect(task.laundry?).to be false
      end

      it 'returns ture when the title cotains the word laundry' do
        task = Task.create!(title: 'laundry day', description: 'clean clothes')
    
        expect(task.laundry?).to be true
      end

      it 'is case insensitive if the title contains the word laundry' do
         task = Task.create!(title: 'Laundry day', description: 'clean clothes')
    
        expect(task.laundry?).to be true
      end

      it 'returns true when the description cotains the word laundry' do
          task = Task.create!(title: 'clean clothes day', description: 'do your laundry')
      
          expect(task.laundry?).to be true
      end

      it 'is case insensitive if the description contains the word laundry' do
         task = Task.create!(title: 'clean clothes day', description: 'DO YOUR LAUNDRY BITCH')
    
        expect(task.laundry?).to be true
      end
    end
  end
end