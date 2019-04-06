require 'erb'
require 'rake'

desc 'install dotfiles into home directory'
task :default do
  replace_all = false
  Dir['_*'].each do |src|
    $stderr.write("\n")
    dst = File.join(ENV['HOME'], src.sub(/^_(.*?)(\.erb)?$/, '.\\1'))

    if File.exist?(dst)
      if File.identical?(src, dst)
        $stderr.write("Skipping identical '#{dst}'\n")
        next
      elsif not replace_all
        $stderr.write("Are you sure you want to overwrite '#{dst}' [ynaq]? ")
        case $stdin.gets.chomp
        when 'y'
          # Replace file
        when 'a'
          replace_all = true
        when 'q'
          exit
        else
          $stderr.write("Skipping '#{dst}'\n")
          next
        end
      end
      rm_r(dst, verbose: false)
    end

    # Install src to dst
    if src =~ /\.erb/
      $stderr.write("Generating '#{dst}' from '#{src}'\n")
      File.open(dst, 'w') do |file|
        file.write(ERB.new(File.read(src)).result)
      end
    else
      $stderr.write("Linking '#{dst}' to '#{src}'\n")
      ln_s(File.expand_path(src), dst, verbose: false)
    end
  end
end
