#!/usr/bin/env ruby

generated_dir = './'

# Regex pattern to match Api references in content
api_pattern = /(\w+)Api\b/

# Process files
Dir.glob(File.join(generated_dir, '**', '*')).each do |file|
  next if File.directory?(file)

  content = File.read(file)
  if content.match?(api_pattern)
    updated_content = content.gsub(api_pattern, '\1')
    File.write(file, updated_content)
    puts "Updated: #{file}"
  end
end

puts "Post-processing complete!"
