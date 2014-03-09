desc 'compile SASS files'
task :scss do
	sh 'scss ./assets/scss/post.scss ./css/post.css'
	sh 'scss ./assets/scss/rmit.scss ./css/rmit.css'
	sh 'scss ./assets/scss/book.scss ./css/book.css'
end

desc 'compile SASS and build HTML'
task :build do
	# how can we use another rake task...
	sh 'scss ./assets/scss/post.scss ./css/post.css'
	sh 'scss ./assets/scss/rmit.scss ./css/rmit.css'
	sh 'scss ./assets/scss/book.scss ./css/book.css'
	sh 'jekyll build'
end
