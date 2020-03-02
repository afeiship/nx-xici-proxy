require "nokogiri"
require "open-uri"

module Nx
  class XiciProxy
    def self.fetch
      doc = Nokogiri::HTML(
        open(
          "https://www.xicidaili.com/",
          read_timeout: 5,
        )
      )

      # process html use selector
      rows = doc.css("#ip_list tr").slice(0, 22)
      data = []
      rows.each_with_index do |row, index|
        if index > 2
          ip = row.css("td:nth-child(2)").text
          port = row.css("td:nth-child(3)").text
          data << { ip: ip, port: port }
        end
      end

      return data
    end
  end
end
