def overage30_judge(first_person_age, second_person_age)
  if first_person_age >= 30
    puts('◯◯')
    if second_person_age < 30
      puts('☓☓')
    end
  end
end


ichiro = 31
niro = 25

overage30_judge(ichiro,niro)