module ApplicationHelpers
  def markdown(contents)
    renderer = Redcarpet::Render::HTML
    markdown = Redcarpet::Markdown.new(
      renderer,
      autolink: true,
      fenced_code_blocks: true,
      footnotes: true,
      highlight: true,
      smartypants: true,
      strikethrough: true,
      tables: true,
      with_toc_data: true
    )
    markdown.render(contents)
  end

  def svg(name)
    root = Middleman::Application.root
    file_path = "#{root}/source/assets/images/#{name}.svg"
    return File.read(file_path) if File.exists?(file_path)
    "(not found)"
  end
end
