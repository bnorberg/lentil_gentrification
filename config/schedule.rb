# Use this file to easily define all of your cron jobs.
#
every 14.minutes do
	rake "lentil:image_services:instagram:fetch_by_tag", :output => {:standard => nil}
end

every 31.minutes do
	rake "lentil:image_services:test_image_files", :output => {:standard => nil}
end

every 59.minutes do
	rake "lentil:image_services:save_image_files", :output => {:standard => nil}
end

every 1.day, :at => '3:30 am' do
	rake "lentil:image_services:dump_metadata", :output => {:standard => nil}
end
every 2.hours do
	rake "lentil:popularity:update_score", :output => {:standard => nil}
end
