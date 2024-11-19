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

# Function to update file content with multiple regex patterns
def update_file_content(file, patterns_and_replacements)
  begin
    content = File.read(file)
    original_content = content.dup

    # Apply each pattern and its corresponding replacement
    patterns_and_replacements.each do |pattern, replacement|
      content.gsub!(pattern, replacement) if content.match?(pattern)
    end

    # Write updated content back to the file only if changes were made
    if content != original_content
      File.write(file, content)
      puts "Updated content in: #{file}"
    end
  rescue => e
    puts "Error processing file #{file}: #{e.message}"
  end
end


# Rename files in ./lib/crimson-falcon/api
rename_files(File.join(base_dir, 'lib', 'crimson-falcon', 'api'), /^(.+)_api\.rb$/, '\1.rb')

# Rename files in ./spec/api
rename_files(File.join(base_dir, 'spec', 'api'), /^(.+)_api_spec\.rb$/, '\1_spec.rb')

# Rename files in ./docs
rename_files(File.join(base_dir, 'docs'), /^(.+)Api\.md$/, '\1.md')

# Consolidate regex patterns and replacements for content updates
patterns_and_replacements = [
  [/(\w+)Api\b/, '\1'],   # Replace 'Something' with 'Something'
  [/(\w+)_api(?=['\s])/, '\1']   # Replace 'something' with 'something'
]

# Process all files and update content with multiple patterns
Dir.glob(File.join(base_dir, '**', '*')).each do |file|
  next if File.directory?(file)

  # Update file content using multiple regex patterns
  update_file_content(file, patterns_and_replacements)
end

puts "Post-processing complete!"
