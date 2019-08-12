
title = doc.search("div.listItem__data a").text.gsub(/\" ...more/,"")

  doc.css("div.listItem.listItem__h2.listItem__h2--grid-nvscdSdow__r2--zyzEz.pointer.listItem__h2--buyButton.flex.relative.robotoC").each do |movie|
 title = movie.css("div.listItem__data a").text
	end 