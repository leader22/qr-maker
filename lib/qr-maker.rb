require 'thor'
require 'rqrcode'
require 'rqrcode_png'
require 'chunky_png'

class QRMaker < Thor
    desc 'gen URL DEST -size=SIZE', 'Generate QR by specified size'
    option :size, :type => :numeric, :aliases => :s, :default => 240
    def gen(url, dest = './qr.png')
        size = options[:size]

        qr = RQRCode::QRCode.new(url, :size => 5, :level => :h)
        png = qr.to_img
        png.resize(size, size).save(dest)
        p 'QR code created -> ' + dest
    end
end
