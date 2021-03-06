module ClassnamesHelper
  def classnames(*args)
    classes = []

    args.each do |arg|
      case arg
      when String
        classes.push(arg) if arg.strip.size > 0
      when Hash
        arg.each do |k, v|
          classes.push(k.to_s) if v == true
        end
      when Array
        classes.push(classnames(*arg))
      end
    end
    
    classes.join(" ")
  end
end
