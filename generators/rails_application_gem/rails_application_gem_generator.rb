class RailsApplicationGemGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
      application_name = 'prova'
      m.directory 'bin'
      m.template 'application-command.erb', "bin/#{application_name}"
      m.template 'application.gemspec.erb', "#{application_name}.gemspec"
    end
  end
end
