class DeadfireCompiler < Propshaft::Compiler
  def compile(logical_path, input)
    Deadfire.parse(input, root_path: Rails.root.join("app", "assets", "stylesheets"))
  end
end

Rails.application.config.assets.compilers << [ "text/css", DeadfireCompiler ]
