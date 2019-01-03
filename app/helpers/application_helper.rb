module ApplicationHelper
  def beacon_tag_script
    <<-SCRIPT
document.addEventListener('DOMContentLoaded', function () {
  var before = document.getElementById("turai_vote_area");
  if(!before) { return;}
  var iframe = document.createElement('iframe');
  iframe.style = 'border: none';
  iframe.id = 'turai_iframe';
  iframe.width = '100%';
  iframe.height = 220;
  iframe.d_id = '8fd9901278ef';
  iframe.d_url = location.href;
  iframe.d_title = document.title;
  iframe.src = '#{beacons_url}';
  before.parentNode.replaceChild(iframe, before);
});
SCRIPT
  end

  def beacon_tag_script_compressed
    Uglifier.new({
      compress: {
        collapse_vars: true
      }
    }).compile(beacon_tag_script)
  end
  
end
