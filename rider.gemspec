# -*- encoding: utf-8 -*-
 
Gem::Specification.new do |s|
  s.name = %q{rider}
  s.version = "0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Quinn Slack"]
  s.date = %q{2009-10-07}
  s.description = %q{Ruby Web crawler}
  s.email = %q{me@rafaelss.com}
  s.files = ["bin/crawl", "lib/rider/crawler.rb", "lib/rider/part_queue.rb", "lib/rider/queue.rb", "lib/rider.rb", "Rakefile", "README", "spec/crawler_spec.rb", "spec/data/apples.html", "spec/data/colors.html", "spec/data/fruits.html", "spec/data/notitle.html", "spec/data/prices.html", "spec/data/tiny.html", "spec/part_queue_spec.rb", "spec/queue_spec.rb", "spec/spec_helper.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/rspec.rake"]
  s.homepage = %q{http://qslack.com/}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Ruby Web crawler}
  s.test_files = ["spec/crawler_spec.rb", "spec/part_queue_spec.rb", "spec/queue_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hpricot>, [">= 0.8.1"])
      s.add_runtime_dependency(%q<mechanize>, [">= 0.9.3"])
    else
      s.add_dependency(%q<hpricot>, [">= 0.8.1"])
      s.add_dependency(%q<mechanize>, [">= 0.9.3"])
    end
  else
    s.add_dependency(%q<hpricot>, [">= 0.8.1"])
    s.add_dependency(%q<mechanize>, [">= 0.9.3"])
  end
end