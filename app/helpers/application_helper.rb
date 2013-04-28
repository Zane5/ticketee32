module ApplicationHelper
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "Ticketee32").join(" - ") unless parts.empty?
      end
    end
  end
end
