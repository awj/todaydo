
require 'rails/source_annotation_extractor'

module TodayDo
  def self.pick
    s = SourceAnnotationExtractor.new "TODO"
    todos = s.find

    files = todos.keys.sort

    d = Date.today
    file_index = d.month % files.length

    file_name = files[file_index]
    file = todos[file_name]
    
    todo_index = d.day % file.length
    todo = file[todo_index]

    puts file_name
    puts todo
  end
end

class TodayDoTask < Rails::Railtie
  rake_tasks do
    Dir[File.join(File.dirname(__FILE__),'tasks/*.rake')].each { |f| load f }
  end
end
