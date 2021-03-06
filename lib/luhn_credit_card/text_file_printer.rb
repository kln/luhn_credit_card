require 'luhn_credit_card/pretty_printer'

class TextFilePrinter
  def self.parse(file_path)
    File.readlines(file_path).map do |number|
      PrettyPrinter.print( LuhnCreditCard.new(number) )
    end.join("\n")
  end
end