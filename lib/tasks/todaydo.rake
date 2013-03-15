require 'todaydo'

desc "Pick a # TODO to do today!"
task :todaydo => :environment do
  TodayDo.pick
end
