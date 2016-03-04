class WickedController < ApplicationController
  def sample
  end
  def gen_pdf
    pdf = render_to_string pdf: "sample2", template: "wicked/sample.html.erb", encoding: "UTF-8"

    # then save to a file
    save_path = Rails.root.join('app','assets','pdfs','sample2.pdf')
    File.open(save_path, 'wb') do |file|
      file << pdf
    end
    render "sample"
  end
end
