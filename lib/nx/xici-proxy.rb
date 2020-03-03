require "nokogiri"
require "open-uri"

module Nx
  class XiciProxy
    def self.fetch
      doc = Nokogiri::HTML(
        open(
          "https://www.xicidaili.com/wn/",
          read_timeout: 5,
        )
      )

      # process html use selector
      rows = doc.css("#ip_list tr")
      data = []
      rows.each_with_index do |row, index|
        if index > 0
          ip = row.css("td:nth-child(2)").text
          port = row.css("td:nth-child(3)").text
          data << { ip: ip, port: port }
        end
      end

      return data
    end
  end
end
