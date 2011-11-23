# A sample Guardfile
# More info at https://github.com/guard/guard#readme

group 'backend' do
  guard 'bundler' do
    watch('Gemfile')
  end
#  guard 'rspec', :cli => '--color --format doc' do
    ## Regexp watch patterns are matched with Regexp#match
    #watch(%r{^spec/.+_spec\.rb$})
    #watch(%r{^lib/(.+)\.rb$})         { |m| "spec/lib/#{m[1]}_spec.rb" }
    #watch(%r{^spec/models/.+\.rb$})   { ["spec/models", "spec/acceptance"] }
    #watch(%r{^spec/.+\.rb$})          { `say hello` }

    ## String watch patterns are matched with simple '=='
    #watch('spec/spec_helper.rb') { "spec" }
  #end

end


guard :test do
  watch(%r{^lib/(.+)\.rb$})     { |m| "test/#{m[1]}_test.rb" }
  watch(%r{^test/.+_test\.rb$})
  watch('test/test_helper.rb')  { "test" }

  # Rails example
  watch(%r{^app/models/(.+)\.rb$})                   { |m| "test/unit/#{m[1]}_test.rb" }
  watch(%r{^app/controllers/(.+)\.rb$})              { |m| "test/functional/#{m[1]}_test.rb" }
  watch(%r{^app/views/.+\.rb$})                      { "test/integration" }
  watch('app/controllers/application_controller.rb') { ["test/functional", "test/integration"] }
end
