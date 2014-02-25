desc 'compile SASS files'
task :scss do
	sh 'scss ./assets/scss/main.scss ./css/main.css'
	sh 'scss ./assets/scss/post.scss ./css/post.css'
	sh 'scss ./assets/scss/rmit.scss ./css/rmit.css'
end