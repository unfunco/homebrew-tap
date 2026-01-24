# frozen_string_literal: true

require "erb"
require "ostruct"

desc "Update a formula with new version and checksums"
task :update_formula do
  formula = ENV.fetch("FORMULA")
  version = ENV.fetch("VERSION")

  data = OpenStruct.new(
    formula: formula,
    class_name: formula.capitalize,
    version: version,
    description: ENV.fetch("DESCRIPTION", ""),
    homepage: ENV.fetch("HOMEPAGE", "https://github.com/unfunco/#{formula}"),
    darwin_amd64_url: ENV.fetch("DARWIN_AMD64_URL", ""),
    darwin_amd64_sha256: ENV.fetch("DARWIN_AMD64_SHA256", ""),
    darwin_arm64_url: ENV.fetch("DARWIN_ARM64_URL", ""),
    darwin_arm64_sha256: ENV.fetch("DARWIN_ARM64_SHA256", ""),
    linux_amd64_url: ENV.fetch("LINUX_AMD64_URL", ""),
    linux_amd64_sha256: ENV.fetch("LINUX_AMD64_SHA256", ""),
    linux_arm64_url: ENV.fetch("LINUX_ARM64_URL", ""),
    linux_arm64_sha256: ENV.fetch("LINUX_ARM64_SHA256", "")
  )

  template_path = File.join(__dir__, "templates", "formula.erb")
  template = ERB.new(File.read(template_path), trim_mode: "-")
  output = template.result(data.instance_eval { binding })

  output_path = File.join(__dir__, "Formula", "#{formula}.rb")
  File.write(output_path, output)

  puts "Updated #{output_path}"
end
