module Jekyll

	class GuidelineStartTag < Liquid::Tag

		def initialize(tag_name, text, tokens)
	      super
	      @text = text
	    end

	    def render(context)
	      "<article class=\"guideline #{@text.strip}\">"
	    end

	end

	class GuidelineEndTag < Liquid::Tag

		def render(context)
			"</article>"
		end
	end

end

Liquid::Template.register_tag('guideline', Jekyll::GuidelineStartTag)
Liquid::Template.register_tag('endguideline', Jekyll::GuidelineEndTag)