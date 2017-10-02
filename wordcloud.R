## Untuk buat perkataan berawan-awan

install.packages("wordcloud")
install.packages("RColorBrewer")

library(wordcloud)
library(RColorBrewer)
library(data.table)
txt <- data.table(a = rep(c("Yusman", "Tawau", "Sabah", "Erik", "Malaysia", "Kampung", "Kuhara",
                            "Norge", "Norway", "Gabels", "Oslo", "Lise", "Bandar", "Yusman", "Keluarga", "Kamaleri"), 5),
                  b = c(7, 20, 15, 30, 60, 40))

wordcloud(words = txt$a, freq = txt$b, min.freq = 2, max.words = 200,
          rot.per = 0.35, colors = brewer.pal(8, "Dark2"), random.color = T)

wordcloud(txt$a, txt$b, scale=c(8,.2),min.freq=2,
          max.words=Inf, random.order=FALSE, rot.per=.15)

## Guna wordcloud2 - gives HTML5 interface for visualisation
install.packages("wordcloud2")
library(wordcloud2)

wordcloud2(data = demoFreq)
