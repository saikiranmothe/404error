class ActiveAdmin::Views::Pages::Base < Arbre::HTML::Document
 
  private
 
  # Renders the content for the footer
  def build_footer
    div :id => "footer" do
      para "Copyright &copy; #{Date.today.year.to_s} #{link_to('telanganaplaces.com', 'http://www.telanganaplaces.com')}".html_safe
    end
  end
 
end