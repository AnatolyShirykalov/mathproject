class BazaOtvetov
  def from_dir(dir="/home/anatoly/study/victorins")
    Dir.glob(File.join(dir, "*")).sort_by do |path|
      File.basename(path).to_i
    end.each do |path|
      begin
        doc = Nokogiri::HTML(open(File.join(path, "index.html")).read)
        doc.css('.tooltip').each do |tr|
          begin
            cont = tr.at_css('.q-list__quiz-answers')
            next unless cont
            anss = cont.text.gsub('Ответы для викторин: ', '').split(',')
            next if anss.size != 3
            q = Question.find_or_initialize_by({
              question: tr.at_css('a').text,
              rans: tr.css('td')[-1].text})
            (0..2).each{|i| q.send("ans#{i+1}=",  anss[i])}
            q.save!
          rescue => e
            binding.pry
          end
        end
      rescue => e
        binding.pry
      end
    end
  end
end
