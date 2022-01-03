library(tidyverse)
library(fplr)
library(ggrepel)


flynn <- data.frame(
        flynn = c(fpl_get_user_performance(user_id = 1991653)$season$total_points / 38, 
                   fpl_get_user_performance(user_id = 1991653)$entry$summary_overall_points / 33),
        season = c(fpl_get_user_performance(user_id = 1991653)$season$season_name, '2018/19'))

paddy <- data.frame(
        paddy = c(fpl_get_user_performance(user_id = 1094058)$season$total_points / 38, 
                   fpl_get_user_performance(user_id = 1094058)$entry$summary_overall_points / 33),
        season = c(fpl_get_user_performance(user_id = 1094058)$season$season_name, '2018/19'))

mike <- data.frame(
        mike = c(fpl_get_user_performance(user_id = 1033910)$season$total_points / 38, 
                   fpl_get_user_performance(user_id = 1033910)$entry$summary_overall_points / 33),
        season = c(fpl_get_user_performance(user_id = 1033910)$season$season_name, '2018/19'))


jonathan <- data.frame(
        jonathan = c(fpl_get_user_performance(user_id = 2233341)$season$total_points / 38, 
                   fpl_get_user_performance(user_id = 2233341)$entry$summary_overall_points / 33),
        season = c(fpl_get_user_performance(user_id = 2233341)$season$season_name, '2018/19'))

val <- data.frame(
        val = c(fpl_get_user_performance(user_id = 893932)$season$total_points / 38, 
                   fpl_get_user_performance(user_id = 893932)$entry$summary_overall_points / 33),
        season = c(fpl_get_user_performance(user_id = 893932)$season$season_name, '2018/19'))

ryan <- data.frame(
        ryan = c(fpl_get_user_performance(user_id = 1648197)$season$total_points / 38, 
                   fpl_get_user_performance(user_id = 1648197)$entry$summary_overall_points / 33),
        season = c(fpl_get_user_performance(user_id = 1648197)$season$season_name, '2018/19'))

bruno <- data.frame(
        bruno = c(fpl_get_user_performance(user_id = 2933024)$season$total_points / 38, 
                   fpl_get_user_performance(user_id = 2933024)$entry$summary_overall_points / 33),
        season = c(fpl_get_user_performance(user_id = 2933024)$season$season_name, '2018/19'))

ben <- data.frame(
        ben = c(fpl_get_user_performance(user_id = 1051336)$season$total_points / 38, 
                   fpl_get_user_performance(user_id = 1051336)$entry$summary_overall_points / 33),
        season = c(fpl_get_user_performance(user_id = 1051336)$season$season_name, '2018/19'))

niall_neil <- data.frame(
        niall_neil = c(fpl_get_user_performance(user_id = 979073)$season$total_points / 38, 
                   fpl_get_user_performance(user_id = 979073)$entry$summary_overall_points / 33),
        season = c(fpl_get_user_performance(user_id = 979073)$season$season_name, '2018/19'))

laura <- data.frame(
        laura = c(fpl_get_user_performance(user_id = 3461405)$season$total_points / 38, 
                   fpl_get_user_performance(user_id = 3461405)$entry$summary_overall_points / 33),
        season = c(fpl_get_user_performance(user_id = 3461405)$season$season_name, '2018/19'))

marilyn <- data.frame(
        marilyn = c(fpl_get_user_performance(user_id = 2928422)$season$total_points / 38, 
                   fpl_get_user_performance(user_id = 2928422)$entry$summary_overall_points / 33),
        season = c(fpl_get_user_performance(user_id = 2928422)$season$season_name, '2018/19'))

dani <- data.frame(
        dani = fpl_get_user_performance(user_id = 3581557)$entry$summary_overall_points / 33,
        season = '2018/19')

lewina <- data.frame(
        lewina = fpl_get_user_performance(user_id = 4103845)$entry$summary_overall_points / 33,
        season = '2018/19')



df <- left_join(val, niall_neil, by = 'season')
df <- left_join(df, mike, by = 'season')
df <- left_join(df, paddy, by = 'season')
df <- left_join(df, jonathan, by = 'season')
df <- left_join(df, laura, by = 'season')
df <- left_join(df, flynn, by = 'season')
df <- left_join(df, ryan, by = 'season')
df <- left_join(df, marilyn, by = 'season')
df <- left_join(df, lewina, by = 'season')
df <- left_join(df, ben, by = 'season')
df <- left_join(df, bruno, by = 'season')
df <- left_join(df, dani, by = 'season')

rm(val)
rm(niall_neil)
rm(mike)
rm(paddy)
rm(jonathan)
rm(dani)
rm(bruno)
rm(ben)
rm(flynn)
rm(lewina)
rm(ryan)
rm(marilyn)
rm(laura)

df$season_start <- str_replace(df$season, '\\/(.*)', '')


df_long <- df %>% 
        select(-season) %>%
        gather(player, points, -season_start) %>%
        mutate(season_start = as.Date(paste(season_start, 
                                            '01', '01', sep = '-')))

ggplot(df_long, aes(season_start, points, color = player, 
                    group = player)) +
        geom_point(size = 3, alpha = .7) + 
        geom_line(size = 1.5, alpha = .7) + 
        theme_void() + 
        scale_color_newswhip(palette = 'colorful_dark') +
        scale_y_continuous(labels = scales::comma) + 
        labs(title = 'Average Points Per Season',
             x = 'Season', y = 'Average Points',
             color = '') +
        facet_wrap(~player)




