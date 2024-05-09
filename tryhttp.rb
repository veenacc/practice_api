require "http"

#p HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json").parse.class
chicago =HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json").parse
#p chicago[0].keys
job =[]
chicago.each do |data_point|
  job << data_point["job_titles"]
end
p job.uniq
# count =job.group_by {|element| element }.transform_values(&:count)
# p count