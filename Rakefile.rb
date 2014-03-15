desc 'compile SASS files'
task :scss do
	sh 'scss ./assets/scss/post.scss ./css/post.css'
	sh 'scss ./assets/scss/rmit.scss ./css/rmit.css'
	sh 'scss ./assets/scss/book.scss ./css/book.css'
end

task :compass do
	sh 'compass compile'
end

desc 'compile SASS and build HTML'
task :build => [:compass] do
	sh 'jekyll build'
end
