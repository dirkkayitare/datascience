survey <- gsheet::gsheet2tbl("https://docs.google.com/spreadsheets/d/1iVt9FX9J2iv3QFKBM7Gzb9dgva70XrW1lxMV4hpekeo/edit?resourcekey#gid=204634767")
View(survey)
df<- read_csv("https://raw.githubusercontent.com/databrew/intro-to-data-science/main/data/deaths.csv")
titanic <- df
View(titanic)
library(gapminder)
gm <- gapminder::gapminder

View(gm)

#8.
gm_eighties <- gm %>% filter(year == 1982) %>% group_by (country)
View(gm_eighties)

ggplot(data = gm_eighties,
       aes(x = lifeExp)) +
  geom_histogram()

#9. 
asia_pop <- gm %>% filter (continent=='Asia') %>% group_by (country)
View(asia_pop)

ggplot(data = asia_pop,
       aes(x = year, 
           y = pop,
           color = country)) + 
  geom_line(alpha = 0.8)

#10. 
ggplot(data = asia_pop,
       aes(x = year, 
           y = pop,
           color = country)) + 
  geom_line(alpha = 0.8) +
  ggtitle('Asian countries populations over time') +
  xlab('Years over time') +
  ylab('Population (mil.)')


#12. 
euro_gdp <- gm %>% filter (continent == 'Europe', year == 2002) %>% group_by(country)
View(euro_gdp)

ggplot(euro_gdp,
       aes(x = country,
           y = gdpPercap)) +
  geom_bar(stat = 'identity') +
  theme(axis.text.x = element_text(angle = 90))

#13.
euro_gdp <- gm %>% filter (continent == 'Europe', year == 2002) %>% group_by(country)
View(euro_gdp)

ggplot(euro_gdp,
       aes(x = country,
           y = gdpPercap)) +
  geom_bar(stat = 'identity', fill = 'lightblue', alpha = 0.5) +
  theme(axis.text.x = element_text(angle = 90))

#14. 

the_nineties <- gm %>% filter(year >= 1990, year <= 1999)
View(the_nineties)
write.csv(the_nineties, '90s.csv')
