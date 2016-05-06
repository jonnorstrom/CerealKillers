class Revision < ActiveRecord::Base
  belongs_to :article
  belongs_to :reviser, class_name: 'User', foreign_key: :user_id

  validates :article_id, :user_id, :body, { presence: true }

  def default_word
    default_text = "<p><a name='history'></a></p><p><u><span style='font-size:36px;'><b>History &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</b></span></u></p><p style='margin-left: 40px;'><span style='font-size:14px;'><img alt=' src='http://www.quakeroats.com/images/default-source/products/life-regular-50th-detail-sflbec4155418cb46e438643ff2300547e50' style='width: 139px; height: 100px; float: right;' /><strong>This is where you can post about the history of your cereal where it came from, how it came about and things of that nature. The following is filler text...</strong><br />
Craft beer four dollar toast disrupt blue bottle chambray, biodiesel try-hard migas celiac tilde lo-fi williamsburg PBR&amp;B. Selfies small batch narwhal polaroid drinking vinegar green juice. Cred synth farm-to-table, godard readymade gluten-free microdosing. Fashion axe migas twee everyday carry mumblecore, man bun before they sold out tote bag marfa forage poutine. Stumptown portland narwhal single-origin coffee post-ironic, tofu mlkshk yuccie gentrify brooklyn. Irony chicharrones stumptown venmo. Wolf shoreditch plaid, PBR&amp;B irony austin stumptown lumbersexual chambray narwhal meditation portland lo-fi.</span></p><p><a name='about'></a></p><p><b style='font-size: 36px; text-decoration: underline;'>About&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</b></p><p style='margin-left: 40px;'><span style='font-size:14px;'><strong>This is where you can post about&nbsp;your cereal where it came from, how it tastes and things of that nature. The following is filler text..</strong>.<br />
Craft beer four dollar toast disrupt blue bottle chambray, biodiesel try-hard migas celiac tilde lo-fi williamsburg PBR&amp;B. Selfies small batch narwhal polaroid drinking vinegar green juice. Cred synth farm-to-table, godard readymade gluten-free microdosing. Fashion axe migas twee everyday carry mumblecore, man bun before they sold out tote bag marfa forage poutine. Stumptown portland </span></p><p><a name='ingredients'></a></p><p><b style='font-size: 36px; text-decoration: underline;'>Ingredients&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</b></p><p style='margin-left: 40px;'><span style='font-size:14px;'><strong>This is where you can post about&nbsp;your cereal its ingredients&nbsp;and things of that nature. The following is filler text..</strong>.</span></p><ul><li style='margin-left: 40px;'><span style='font-size:14px;'>Craft beer four dollar toast disrupt blue bottle chambray,</span></li><li style='margin-left: 40px;'><span style='font-size:14px;'>biodiesel try-hard migas celiac tilde lo-fi williamsburg PBR&amp;B. </span></li><li style='margin-left: 40px;'><span style='font-size:14px;'>Selfies small batch narwhal polaroid drinking vinegar green juice. </span></li> <li style='margin-left: 40px;'><span style='font-size:14px;'>Cred synth farm-to-table, godard readymade gluten-free microdosing. </span></li><li style='margin-left: 40px;'><span style='font-size:14px;'>Fashion axe migas twee everyday carry mumblecore, </span></li><li style='margin-left: 40px;'><span style='font-size:14px;'>man bun before they sold out tote bag marfa forage poutine. Stumptown portland</span></li>
  <li style='margin-left: 40px;'><span style='font-size:14px;'>Red 40, Yellow 6</span></li></ul><p>&nbsp;</p><p>&nbsp;</p>"
  end

  def set_default_text
    self.body = default_word
  end


end
