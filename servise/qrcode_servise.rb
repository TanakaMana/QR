class QrcodeService
  def initialize
    @option = { size: 10, level: :h, pic: 2, format: 'jpg', back_color: '#fff', code_color: '#333' }
  end

  def create_qr(url)
    qr = RQRCode::QRCode.new(url, size: @option[:size], level: @option[:level])
    @img = qr.to_img.resize(200, 200)
    @img.save("app/assets/images/#{url.gsub(/\//, '-')}.png")
  end
end
