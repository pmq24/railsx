# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rails-html-sanitizer` gem.
# Please instead update this file by running `bin/tapioca gem rails-html-sanitizer`.

module ActionView::Helpers::SanitizeHelper::ClassMethods
  # Gets the Rails::Html::FullSanitizer instance used by +strip_tags+. Replace with
  # any object that responds to +sanitize+.
  #
  #   class Application < Rails::Application
  #     config.action_view.full_sanitizer = MySpecialSanitizer.new
  #   end
  #
  # source://actionview/7.0.4/lib/action_view/helpers/sanitize_helper.rb#145
  def full_sanitizer; end

  # Sets the attribute full_sanitizer
  #
  # @param value the value to set the attribute full_sanitizer to.
  #
  # source://actionview/7.0.4/lib/action_view/helpers/sanitize_helper.rb#125
  def full_sanitizer=(_arg0); end

  # Gets the Rails::Html::LinkSanitizer instance used by +strip_links+.
  # Replace with any object that responds to +sanitize+.
  #
  #   class Application < Rails::Application
  #     config.action_view.link_sanitizer = MySpecialSanitizer.new
  #   end
  #
  # source://actionview/7.0.4/lib/action_view/helpers/sanitize_helper.rb#155
  def link_sanitizer; end

  # Sets the attribute link_sanitizer
  #
  # @param value the value to set the attribute link_sanitizer to.
  #
  # source://actionview/7.0.4/lib/action_view/helpers/sanitize_helper.rb#125
  def link_sanitizer=(_arg0); end

  # Gets the Rails::Html::SafeListSanitizer instance used by sanitize and +sanitize_css+.
  # Replace with any object that responds to +sanitize+.
  #
  #   class Application < Rails::Application
  #     config.action_view.safe_list_sanitizer = MySpecialSanitizer.new
  #   end
  #
  # source://actionview/7.0.4/lib/action_view/helpers/sanitize_helper.rb#165
  def safe_list_sanitizer; end

  # Sets the attribute safe_list_sanitizer
  #
  # @param value the value to set the attribute safe_list_sanitizer to.
  #
  # source://actionview/7.0.4/lib/action_view/helpers/sanitize_helper.rb#125
  def safe_list_sanitizer=(_arg0); end

  # source://actionview/7.0.4/lib/action_view/helpers/sanitize_helper.rb#135
  def sanitized_allowed_attributes; end

  # Replaces the allowed HTML attributes for the +sanitize+ helper.
  #
  #   class Application < Rails::Application
  #     config.action_view.sanitized_allowed_attributes = ['onclick', 'longdesc']
  #   end
  #
  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#50
  def sanitized_allowed_attributes=(attributes); end

  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#63
  def sanitized_allowed_css_keywords; end

  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#64
  def sanitized_allowed_css_keywords=(_); end

  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#63
  def sanitized_allowed_css_properties; end

  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#64
  def sanitized_allowed_css_properties=(_); end

  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#63
  def sanitized_allowed_protocols; end

  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#64
  def sanitized_allowed_protocols=(_); end

  # source://actionview/7.0.4/lib/action_view/helpers/sanitize_helper.rb#131
  def sanitized_allowed_tags; end

  # Replaces the allowed tags for the +sanitize+ helper.
  #
  #   class Application < Rails::Application
  #     config.action_view.sanitized_allowed_tags = 'table', 'tr', 'td'
  #   end
  #
  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#40
  def sanitized_allowed_tags=(tags); end

  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#63
  def sanitized_bad_tags; end

  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#64
  def sanitized_bad_tags=(_); end

  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#63
  def sanitized_protocol_separator; end

  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#64
  def sanitized_protocol_separator=(_); end

  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#63
  def sanitized_shorthand_css_properties; end

  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#64
  def sanitized_shorthand_css_properties=(_); end

  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#63
  def sanitized_uri_attributes; end

  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#64
  def sanitized_uri_attributes=(_); end

  # source://actionview/7.0.4/lib/action_view/helpers/sanitize_helper.rb#127
  def sanitizer_vendor; end

  private

  # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#68
  def deprecate_option(name); end
end

module Rails::Html; end

# === Rails::Html::FullSanitizer
# Removes all tags but strips out scripts, forms and comments.
#
# full_sanitizer = Rails::Html::FullSanitizer.new
# full_sanitizer.sanitize("<b>Bold</b> no more!  <a href='more.html'>See more here</a>...")
# # => Bold no more!  See more here...
class Rails::Html::FullSanitizer < ::Rails::Html::Sanitizer
  # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#29
  def sanitize(html, options = T.unsafe(nil)); end
end

# === Rails::Html::LinkSanitizer
# Removes +a+ tags and +href+ attributes leaving only the link text.
#
#  link_sanitizer = Rails::Html::LinkSanitizer.new
#  link_sanitizer.sanitize('<a href="example.com">Only the link text will be kept.</a>')
#
#  => 'Only the link text will be kept.'
class Rails::Html::LinkSanitizer < ::Rails::Html::Sanitizer
  # @return [LinkSanitizer] a new instance of LinkSanitizer
  #
  # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#50
  def initialize; end

  # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#56
  def sanitize(html, options = T.unsafe(nil)); end
end

# === Rails::Html::PermitScrubber
#
# +Rails::Html::PermitScrubber+ allows you to permit only your own tags and/or attributes.
#
# +Rails::Html::PermitScrubber+ can be subclassed to determine:
# - When a node should be skipped via +skip_node?+.
# - When a node is allowed via +allowed_node?+.
# - When an attribute should be scrubbed via +scrub_attribute?+.
#
# Subclasses don't need to worry if tags or attributes are set or not.
# If tags or attributes are not set, Loofah's behavior will be used.
# If you override +allowed_node?+ and no tags are set, it will not be called.
# Instead Loofahs behavior will be used.
# Likewise for +scrub_attribute?+ and attributes respectively.
#
# Text and CDATA nodes are skipped by default.
# Unallowed elements will be stripped, i.e. element is removed but its subtree kept.
# Supplied tags and attributes should be Enumerables.
#
# +tags=+
# If set, elements excluded will be stripped.
# If not, elements are stripped based on Loofahs +HTML5::Scrub.allowed_element?+.
#
# +attributes=+
# If set, attributes excluded will be removed.
# If not, attributes are removed based on Loofahs +HTML5::Scrub.scrub_attributes+.
#
#  class CommentScrubber < Html::PermitScrubber
#    def initialize
#      super
#      self.tags = %w(form script comment blockquote)
#    end
#
#    def skip_node?(node)
#      node.text?
#    end
#
#    def scrub_attribute?(name)
#      name == "style"
#    end
#  end
#
# See the documentation for +Nokogiri::XML::Node+ to understand what's possible
# with nodes: https://nokogiri.org/rdoc/Nokogiri/XML/Node.html
class Rails::Html::PermitScrubber < ::Loofah::Scrubber
  # @return [PermitScrubber] a new instance of PermitScrubber
  #
  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#50
  def initialize; end

  # Returns the value of attribute attributes.
  #
  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#48
  def attributes; end

  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#59
  def attributes=(attributes); end

  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#63
  def scrub(node); end

  # Returns the value of attribute tags.
  #
  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#48
  def tags; end

  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#55
  def tags=(tags); end

  protected

  # @return [Boolean]
  #
  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#80
  def allowed_node?(node); end

  # @return [Boolean]
  #
  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#92
  def keep_node?(node); end

  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#134
  def scrub_attribute(node, attr_node); end

  # @return [Boolean]
  #
  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#88
  def scrub_attribute?(name); end

  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#105
  def scrub_attributes(node); end

  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#118
  def scrub_css_attribute(node); end

  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#100
  def scrub_node(node); end

  # @return [Boolean]
  #
  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#84
  def skip_node?(node); end

  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#127
  def validate!(var, name); end
end

# === Rails::Html::SafeListSanitizer
# Sanitizes html and css from an extensive safe list (see link further down).
#
# === Whitespace
# We can't make any guarantees about whitespace being kept or stripped.
# Loofah uses Nokogiri, which wraps either a C or Java parser for the
# respective Ruby implementation.
# Those two parsers determine how whitespace is ultimately handled.
#
# When the stripped markup will be rendered the users browser won't take
# whitespace into account anyway. It might be better to suggest your users
# wrap their whitespace sensitive content in pre tags or that you do
# so automatically.
#
# === Options
# Sanitizes both html and css via the safe lists found here:
# https://github.com/flavorjones/loofah/blob/master/lib/loofah/html5/safelist.rb
#
# SafeListSanitizer also accepts options to configure
# the safe list used when sanitizing html.
# There's a class level option:
# Rails::Html::SafeListSanitizer.allowed_tags = %w(table tr td)
# Rails::Html::SafeListSanitizer.allowed_attributes = %w(id class style)
#
# Tags and attributes can also be passed to +sanitize+.
# Passed options take precedence over the class level options.
#
# === Examples
# safe_list_sanitizer = Rails::Html::SafeListSanitizer.new
#
# Sanitize css doesn't take options
# safe_list_sanitizer.sanitize_css('background-color: #000;')
#
# Default: sanitize via a extensive safe list of allowed elements
# safe_list_sanitizer.sanitize(@article.body)
#
# Safe list via the supplied tags and attributes
# safe_list_sanitizer.sanitize(@article.body, tags: %w(table tr td),
# attributes: %w(id class style))
#
# Safe list via a custom scrubber
# safe_list_sanitizer.sanitize(@article.body, scrubber: ArticleScrubber.new)
class Rails::Html::SafeListSanitizer < ::Rails::Html::Sanitizer
  # @return [SafeListSanitizer] a new instance of SafeListSanitizer
  #
  # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#113
  def initialize; end

  # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#117
  def sanitize(html, options = T.unsafe(nil)); end

  # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#138
  def sanitize_css(style_string); end

  private

  # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#165
  def allowed_attributes(options); end

  # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#157
  def allowed_tags(options); end

  # @return [Boolean]
  #
  # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#144
  def loofah_using_html5?; end

  # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#149
  def remove_safelist_tag_combinations(tags); end

  class << self
    # Returns the value of attribute allowed_attributes.
    #
    # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#106
    def allowed_attributes; end

    # Sets the attribute allowed_attributes
    #
    # @param value the value to set the attribute allowed_attributes to.
    #
    # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#106
    def allowed_attributes=(_arg0); end

    # Returns the value of attribute allowed_tags.
    #
    # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#105
    def allowed_tags; end

    # Sets the attribute allowed_tags
    #
    # @param value the value to set the attribute allowed_tags to.
    #
    # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#105
    def allowed_tags=(_arg0); end
  end
end

class Rails::Html::Sanitizer
  # @raise [NotImplementedError]
  #
  # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#6
  def sanitize(html, options = T.unsafe(nil)); end

  private

  # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#17
  def properly_encode(fragment, options); end

  # source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#12
  def remove_xpaths(node, xpaths); end

  class << self
    # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#10
    def full_sanitizer; end

    # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#14
    def link_sanitizer; end

    # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#18
    def safe_list_sanitizer; end

    # source://rails-html-sanitizer//lib/rails-html-sanitizer.rb#22
    def white_list_sanitizer; end
  end
end

# source://rails-html-sanitizer//lib/rails/html/sanitizer/version.rb#4
Rails::Html::Sanitizer::VERSION = T.let(T.unsafe(nil), String)

# === Rails::Html::TargetScrubber
#
# Where +Rails::Html::PermitScrubber+ picks out tags and attributes to permit in
# sanitization, +Rails::Html::TargetScrubber+ targets them for removal.
#
# +tags=+
# If set, elements included will be stripped.
#
# +attributes=+
# If set, attributes included will be removed.
class Rails::Html::TargetScrubber < ::Rails::Html::PermitScrubber
  # @return [Boolean]
  #
  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#172
  def allowed_node?(node); end

  # @return [Boolean]
  #
  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#176
  def scrub_attribute?(name); end
end

# === Rails::Html::TextOnlyScrubber
#
# +Rails::Html::TextOnlyScrubber+ allows you to permit text nodes.
#
# Unallowed elements will be stripped, i.e. element is removed but its subtree kept.
class Rails::Html::TextOnlyScrubber < ::Loofah::Scrubber
  # @return [TextOnlyScrubber] a new instance of TextOnlyScrubber
  #
  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#187
  def initialize; end

  # source://rails-html-sanitizer//lib/rails/html/scrubbers.rb#191
  def scrub(node); end
end

# source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#170
Rails::Html::WhiteListSanitizer = Rails::Html::SafeListSanitizer

# source://rails-html-sanitizer//lib/rails/html/sanitizer.rb#3
Rails::Html::XPATHS_TO_REMOVE = T.let(T.unsafe(nil), Array)