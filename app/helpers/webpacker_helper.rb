module WebpackerHelper
  def page_pack_tags
    join_paths(application_pack_tags,
      controller_pack_tags)
  end

  def application_pack_tags
    join_paths(attempt_to_find(:stylesheet, 'application'),
      attempt_to_find(:javascript, 'application'))
  end

  def controller_pack_tags
    join_paths(attempt_to_find(:stylesheet, controller_pack_lookup),
      attempt_to_find(:javascript, controller_pack_lookup))
  end

  private
  
  def join_paths(*paths)
    paths.select(&:present?).join("\n\n").html_safe
  end
  
  def controller_pack_lookup
    @controller_pack_lookup ||= begin
      postfix = action_name.in?(%w[new create edit update]) ? "_form" : ""
      "#{controller_path}#{postfix}"
    end
  end
  
  def attempt_to_find(asset_type, asset_name)
    case asset_type.to_sym
    when :stylesheet then
      stylesheet_pack_tag(asset_name.to_s, media: :all)
    when :javascript then
      javascript_pack_tag(asset_name.to_s)
    else
      nil
    end
  rescue Webpacker::Manifest::MissingEntryError => e
    message = "Webpacker can't find file #{asset_name} of type #{asset_type}"
    logger.debug(message)
    nil
  end
end