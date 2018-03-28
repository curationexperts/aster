namespace :aster do
  task ci: ['aster:rubocop', 'aster:spec']
end
