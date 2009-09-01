# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{active_merchant_ogone}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jan De Poorter", "Simon Menke"]
  s.date = %q{2009-09-01}
  s.description = %q{A plugin for Ogone support in ActiveRecord. }
  s.email = %q{github@defv.be}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "MIT-LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "active_merchant_ogone.gemspec",
     "init.rb",
     "lib/active_merchant_ogone.rb",
     "lib/active_merchant_ogone/helper.rb",
     "lib/active_merchant_ogone/notification.rb",
     "test/active_merchant_ogone/helper_test.rb",
     "test/active_merchant_ogone/notification_test.rb",
     "test/active_merchant_ogone_test.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/DefV/active_merchant_ogone/tree/master}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A plugin for Ogone support in ActiveRecord.}
  s.test_files = [
    "test/active_merchant_ogone/helper_test.rb",
     "test/active_merchant_ogone/notification_test.rb",
     "test/active_merchant_ogone_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemerchant>, [">= 0"])
    else
      s.add_dependency(%q<activemerchant>, [">= 0"])
    end
  else
    s.add_dependency(%q<activemerchant>, [">= 0"])
  end
end