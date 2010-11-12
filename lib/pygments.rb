class Pygments

  def self.colorize(*args)
    new(*args).colorize
  end

  def initialize(target, lexer = :text, format = :html)
    @target = target
    @options = { :l => lexer, :f => format }
  end

  def execute(command)
    output = ''
    IO.popen(command, mode='r+') do |p|
      write_target_to_stream(p)
      p.close_write
      output = p.read.strip
    end
    output
  end

  def colorize(options = {})
    execute "python pygmentize.py" + convert_options(options)
  end
  alias_method :to_s, :colorize

  def convert_options(options = {})
    @options.merge(options).inject('') do |string, (flag, value)|
      string + " -#{flag} #{value}"
    end
  end

  def write_target_to_stream(stream)
    if @target.respond_to?(:read)
      @target.each { |l| stream << l }
      @target.close
    else
      stream << @target
    end
  end

end
