require 'rails_helper'

RSpec.describe "questions/new", type: :view do
  before(:each) do
    assign(:question, Question.new(
      :survey_id => "",
      :content => "MyText"
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "input#question_survey_id[name=?]", "question[survey_id]"

      assert_select "textarea#question_content[name=?]", "question[content]"
    end
  end
end
