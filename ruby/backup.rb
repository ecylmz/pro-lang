#!/usr/bin/ruby

require 'fileutils'

def backup(from_dir, to_dir, time_format="-%Y%m%d")
  from_path, from_name = File.split(from_dir)
  now = Time.now.strftime(time_format)
  Dir.mkdir(to_dir) unless File.exists? to_dir
  unless File.directory? to_dir
    raise ArgumentError, "Not a directory: #{to_dir}"
  end
  to = File.versioned_filename(File.join(to_dir, from_name + now))
  FileUtils.cp_r(from_dir, to, :preserve=>true)
  return to
end

# This method copied from "Backing Up to Versioned Filenames"

class File
  def File.versioned_filename(base, first_suffix=".0")
    suffix = nil
    filename = base
    while File.exists?(filename)
      suffix = (suffix ? suffix.succ : first_suffix)
      filename = base + suffix
    end
    return filename
  end
end

backup("/home/ecylmz/Masaüstü","/tmp")
