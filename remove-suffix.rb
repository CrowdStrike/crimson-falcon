#!/usr/bin/env ruby

require 'fileutils'

# Base directory
base_dir = '.'

# Function to rename files based on pattern
def rename_files(dir, pattern, replacement)
  Dir.glob(File.join(dir, '*')).each do |file|
    if File.file?(file) && File.basename(file).match?(pattern)
      new_filename = File.join(dir, File.basename(file).gsub(pattern, replacement))
      FileUtils.mv(file, new_filename)
      puts "Renamed: #{file} -> #{new_filename}"
    end
  end
end

# Rename files in ./lib/crimson-falcon/api
rename_files(File.join(base_dir, 'lib', 'crimson-falcon', 'api'), /^(.+)_api\.rb$/, '\1.rb')

# Rename files in ./spec/api
rename_files(File.join(base_dir, 'spec', 'api'), /^(.+)_api_spec\.rb$/, '\1_spec.rb')

# Rename files in ./docs
rename_files(File.join(base_dir, 'docs'), /^(.+)Api\.md$/, '\1.md')

# Regex pattern to match Api references in content
api_pattern = /(\w+)Api\b/

# Process all files and update content
Dir.glob(File.join(base_dir, '**', '*')).each do |file|
  next if File.directory?(file)

  content = File.read(file)
  if content.match?(api_pattern)
    updated_content = content.gsub(api_pattern, '\1')
    File.write(file, updated_content)
    puts "Updated content in: #{file}"
  end
end

puts "Post-processing complete!"
