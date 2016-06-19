# crypto_square.rb

class Crypto
  def initialize(message)
    @message = message
  end
  
  def normalize_plaintext
    @message.gsub(/[^a-zA-Z0-9]/,'').downcase
  end
  
  def size
    (Math.sqrt normalize_plaintext.size).ceil
  end

  def plaintext_segments
    normalize_plaintext.scan(/.{1,#{size}}/)
  end

  def ciphertext
    cipher.join
  end

  def normalize_ciphertext
    cipher.map(&:join).join(' ')
  end

  private
  def cipher
    (0...plaintext_segments[0].size).map do |i|
      plaintext_segments.map{|string| string[i]}
    end
  end
end