FactoryGirl.define do
  factory(:question) do
    option1('be a hippo')
    option2('be a hippie')
    id(1)
  end

  factory(:comment) do
    username('Hippy777')
    content('Hippies are way better than hippos! Yeah!')
    question
  end
end
