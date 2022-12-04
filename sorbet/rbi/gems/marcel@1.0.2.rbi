# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `marcel` gem.
# Please instead update this file by running `bin/tapioca gem marcel`.

# This file is auto-generated. Instead of editing this file, please
# add MIMEs to data/custom.xml or lib/marcel/mime_type/definitions.rb.
module Marcel; end

# @private
#
# source://marcel//lib/marcel/tables.rb#10
Marcel::EXTENSIONS = T.let(T.unsafe(nil), Hash)

# @private
#
# source://marcel//lib/marcel/tables.rb#2154
Marcel::MAGIC = T.let(T.unsafe(nil), Array)

# Mime type detection
class Marcel::Magic
  # Mime type by type string
  #
  # @return [Magic] a new instance of Magic
  #
  # source://marcel//lib/marcel/magic.rb#16
  def initialize(type); end

  # Allow comparison with string
  #
  # @return [Boolean]
  #
  # source://marcel//lib/marcel/magic.rb#102
  def ==(other); end

  # @return [Boolean]
  #
  # source://marcel//lib/marcel/magic.rb#53
  def audio?; end

  # Returns true if type is child of parent type
  #
  # @return [Boolean]
  #
  # source://marcel//lib/marcel/magic.rb#57
  def child_of?(parent); end

  # Get mime comment
  #
  # source://marcel//lib/marcel/magic.rb#67
  def comment; end

  # Allow comparison with string
  #
  # @return [Boolean]
  #
  # source://marcel//lib/marcel/magic.rb#102
  def eql?(other); end

  # Get string list of file extensions
  #
  # source://marcel//lib/marcel/magic.rb#62
  def extensions; end

  # source://marcel//lib/marcel/magic.rb#106
  def hash; end

  # Mediatype shortcuts
  #
  # @return [Boolean]
  #
  # source://marcel//lib/marcel/magic.rb#52
  def image?; end

  # Returns the value of attribute mediatype.
  #
  # source://marcel//lib/marcel/magic.rb#13
  def mediatype; end

  # Returns the value of attribute subtype.
  #
  # source://marcel//lib/marcel/magic.rb#13
  def subtype; end

  # Returns true if type is a text format
  #
  # @return [Boolean]
  #
  # source://marcel//lib/marcel/magic.rb#49
  def text?; end

  # Return type as string
  #
  # source://marcel//lib/marcel/magic.rb#97
  def to_s; end

  # Returns the value of attribute type.
  #
  # source://marcel//lib/marcel/magic.rb#13
  def type; end

  # @return [Boolean]
  #
  # source://marcel//lib/marcel/magic.rb#54
  def video?; end

  class << self
    # Add custom mime type. Arguments:
    # * <i>type</i>: Mime type
    # * <i>options</i>: Options hash
    #
    # Option keys:
    # * <i>:extensions</i>: String list or single string of file extensions
    # * <i>:parents</i>: String list or single string of parent mime types
    # * <i>:magic</i>: Mime magic specification
    # * <i>:comment</i>: Comment string
    #
    # source://marcel//lib/marcel/magic.rb#30
    def add(type, options); end

    # Lookup all mime types by magic content analysis.
    # This is a slower operation.
    #
    # source://marcel//lib/marcel/magic.rb#92
    def all_by_magic(io); end

    # Lookup mime type by file extension
    #
    # source://marcel//lib/marcel/magic.rb#72
    def by_extension(ext); end

    # Lookup mime type by magic content analysis.
    # This is a slow operation.
    #
    # source://marcel//lib/marcel/magic.rb#85
    def by_magic(io); end

    # Lookup mime type by filename
    #
    # source://marcel//lib/marcel/magic.rb#79
    def by_path(path); end

    # @return [Boolean]
    #
    # source://marcel//lib/marcel/magic.rb#112
    def child?(child, parent); end

    # Removes a mime type from the dictionary.  You might want to do this if
    # you're seeing impossible conflicts (for instance, application/x-gmc-link).
    # * <i>type</i>: The mime type to remove.  All associated extensions and magic are removed too.
    #
    # source://marcel//lib/marcel/magic.rb#42
    def remove(type); end

    private

    # source://marcel//lib/marcel/magic.rb#116
    def magic_match(io, method); end

    # source://marcel//lib/marcel/magic.rb#126
    def magic_match_io(io, matches, buffer); end
  end
end

class Marcel::MimeType
  class << self
    # source://marcel//lib/marcel/mime_type.rb#6
    def extend(type, extensions: T.unsafe(nil), parents: T.unsafe(nil), magic: T.unsafe(nil)); end

    # source://marcel//lib/marcel/mime_type.rb#16
    def for(pathname_or_io = T.unsafe(nil), name: T.unsafe(nil), extension: T.unsafe(nil), declared_type: T.unsafe(nil)); end

    private

    # source://marcel//lib/marcel/mime_type.rb#28
    def for_data(pathname_or_io); end

    # source://marcel//lib/marcel/mime_type.rb#54
    def for_declared_type(declared_type); end

    # source://marcel//lib/marcel/mime_type.rb#46
    def for_extension(extension); end

    # source://marcel//lib/marcel/mime_type.rb#38
    def for_name(name); end

    # For some document types (notably Microsoft Office) we recognise the main content
    # type with magic, but not the specific subclass. In this situation, if we can get a more
    # specific class using either the name or declared_type, we should use that in preference
    #
    # source://marcel//lib/marcel/mime_type.rb#80
    def most_specific_type(from_magic_type, fallback_type); end

    # source://marcel//lib/marcel/mime_type.rb#70
    def parse_media_type(content_type); end

    # source://marcel//lib/marcel/mime_type.rb#88
    def root_types(type); end

    # source://marcel//lib/marcel/mime_type.rb#62
    def with_io(pathname_or_io, &block); end
  end
end

# source://marcel//lib/marcel/mime_type.rb#3
Marcel::MimeType::BINARY = T.let(T.unsafe(nil), String)

# @private
#
# source://marcel//lib/marcel/tables.rb#1261
Marcel::TYPES = T.let(T.unsafe(nil), Hash)

# source://marcel//lib/marcel/version.rb#2
Marcel::VERSION = T.let(T.unsafe(nil), String)
