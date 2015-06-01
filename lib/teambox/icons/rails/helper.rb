module Teambox
  module Icons
    module Rails

      ALL_ICONS = Dir[File.join(File.dirname(__FILE__), '../../../../vendor/assets/images/teambox/16px/*png')].map{|f| File.basename f, '.*'}

      module Helper
        extend ActiveSupport::Concern


        # name can be a symbol (:txt), extension string ('txt') or a MIME::Type
        # size may be one of 16, 32, 48 or 512
        def teambox_icon(name, size = 48)
          alt = name.respond_to?(:friendly) ? name.friendly : 'Placeholder'
          if name.respond_to?(:extensions)
            name = (ALL_ICONS & name.extensions)[0]
          end
          name = '_blank' unless ALL_ICONS.include? name.to_s
          image_tag "teambox/#{size}px/#{name}.png", class: "teambox-icon size-#{size} #{name}", alt: alt
        end
      end

    end
  end
end
