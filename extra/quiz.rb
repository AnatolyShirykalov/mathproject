class Quiz
  def from_json(path="/home/anatoly/study/quiizUtvet/data.json")
    data = JSON.parse(open(path).read)
    data.each do |ques|
      q = ques["q"]; a = ques["a"]
      qs = q.split('?').size
      as = (1..4).map{|i| q.split("#{i})").size}
      if qs==2
        ques = Question.find_or_initialize_by(question: q.split('?').first)
        if as.map{|i|i==2}.inject(:&)
          anss = (q.split('?').last.split(/[1-4]\)/)[1..-1]).map do |ans|
            ans.strip
          end.select{|ans| ans != a}
          next if anss.size != 3
          anss.each_with_index{|ans,i| ques.send("ans#{i+1}=", ans)}
        end
        ques.rans = a
        ques.save!
        next
      end
      if as.map{|i| i==1}.inject(:&)
        Question.find_or_create_by! question: q, rans: a
        next
      end
      puts "#{q}\t#{a}"

    end
  end
end
