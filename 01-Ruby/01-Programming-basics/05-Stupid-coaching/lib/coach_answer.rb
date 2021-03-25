def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message == "I am going to work right now!"
    return ""
  elsif your_message.downcase.end_with?("?")
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  answer = coach_answer(your_message)
  if ["I AM GOING TO WORK RIGHT NOW!", "I am going to work right now!"].include?(your_message)
    return ""
  elsif your_message == your_message.upcase
    return "I can feel your motivation! #{answer}"
  else
    answer.to_s
  end
end
