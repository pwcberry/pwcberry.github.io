require 'listen'

desc 'compile SASS files'
task :scss do
# sh 'scss ./assets/scss/post.scss ./css/post.css'
	sh 'scss ./assets/scss/rmit.scss ./css/rmit.css'
	sh 'scss ./assets/scss/book.scss ./css/book.css'
	sh 'scss ./assets/scss/main.scss ./css/main.css'
end

task :compass do
	sh 'compass compile'
end

desc 'compile SASS and build HTML'
task :build => [:compass] do
	sh 'jekyll build'
end

desc 'watch for changes to SASS files and recompile'
task :watch do
	puts "Compiling and watching for changes..."
	system 'rake build'
	 
	listener = Listen.to('./assets/scss', './rmit') do
		puts 'File changed, recompiling...'
		system 'rake build'
	end

	listener.start
	sleep
end