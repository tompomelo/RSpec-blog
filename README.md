Process for creating articles for BDD

- Create a branch for the development work
- Write a feature test
- Build features 
- Make test pass one by one
- Once all features pass with no errors, merge branch with master branch
- 


Creating new spec.rb

- Always call - require "rails_helper"
- Example;
- RSpec.feature "Creating Articles" do
- 
- scenario "something something" do
- visit "/"
- click_link "this" etc
- expect(page) etc
- end