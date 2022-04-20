library(readr)
library(tidyr)
library(lubridate)
library(ggplot2)
library(cowplot)
theme_set(theme_cowplot())
library(magrittr)
library(purrr)
library(ggsignif)
library(contrast)
library(stringr)

df1 <- read_csv(as.character(snakemake@input[["csv"]]))
df1 <- separate(df1, line, into = c("strain", "type"), remove = FALSE, extra = "merge")
# convert h:m:s to decimal minutes
df1$lag <- hms(df1$lag)
df1$lag <- hour(df1$lag) * 60 + minute(df1$lag) + second(df1$lag) / 60
# get of WT for now
df2 <- df1 %>% dplyr::filter(type != "WT")

# everything together
png("results/growth_data/20190906_gp_all.png", width = 3 * 480, height = 2.5 * 480)
lagp <- ggplot(df2, aes(x = type, y = lag)) + geom_boxplot() +
  ylab(expression("lag phase (minutes)")) + 
  xlab("") +
  facet_wrap(~ strain, scales = "free", ncol = 5) + 
  geom_signif(comparisons = list(c("Ancestor", "BAC_14")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "BAC_35")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "PEX_32")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "PEX_33")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "PEX_4")), map_signif_level = TRUE)
vmax <- ggplot(df2, aes(x = type, y = vmax)) + geom_boxplot() + 
  ylab(expression(V["max"])) + 
  xlab("") +
  facet_wrap(~ strain, scales = "free", ncol = 5) + 
  geom_signif(comparisons = list(c("Ancestor", "BAC_17")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "PEX_32")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "PEX_4")), map_signif_level = TRUE)
fod <- ggplot(df2, aes(x = type, y = finalOD)) + geom_boxplot() + 
  ylab(expression(paste("final ", "OD"["600"], sep = " "))) + 
  xlab("") +
  facet_wrap(~ strain, scales = "free", ncol = 5) + 
  geom_signif(comparisons = list(c("Ancestor", "BAC_17")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "BAC_40")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "BAC_14")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "BAC_35")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "BAC_7")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "PEX_32")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "PEX_33")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "PEX_4")), map_signif_level = TRUE)
plot_grid(lagp, vmax, fod, nrow = 3)
dev.off()

# drop SH1000 for separate plotting with facetting
df3 <- df2 %>% dplyr::filter(strain != "SH1000")

png("results/growth_data/20190906_gp_no_sh.png", width = 2 * 480, height = 2.5 * 480)
lagp2 <- ggplot(df3, aes(x = type, y = lag)) + geom_boxplot() +
  ylab(expression("lag phase (minutes)")) + 
  xlab("") +
  facet_wrap(~ strain, scales = "free", ncol = 5) 
vmax2 <- ggplot(df3, aes(x = type, y = vmax)) + geom_boxplot() + 
  ylab(expression(V["max"])) + 
  xlab("") +
  facet_wrap(~ strain, scales = "free", ncol = 5) + 
  geom_signif(comparisons = list(c("Ancestor", "BAC_17")), map_signif_level = TRUE) 
fod2 <- ggplot(df3, aes(x = type, y = finalOD)) + geom_boxplot() + 
  ylab(expression(paste("final ", "OD"["600"], sep = " "))) + 
  xlab("") +
  facet_wrap(~ strain, scales = "free", ncol = 5) + 
  geom_signif(comparisons = list(c("Ancestor", "BAC_17")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "BAC_40")), map_signif_level = TRUE)
plot_grid(lagp2, vmax2, fod2, nrow = 3)
dev.off()

df4 <- df2 %>% dplyr::filter(strain == "SH1000")
pex <- df4 %>% dplyr::filter(str_detect(type, "PEX") | type == "Ancestor")
pex$type2 <- "PEX"
bac <- df4 %>% dplyr::filter(str_detect(type, "BAC") | type == "Ancestor")
bac$type2 <- "BAC"
df5 <- rbind(pex, bac)

png("results/growth_data/20190906_gp_sh.png", width = 2 * 480, height = 2.5 * 480)
lagp3 <- ggplot(df5, aes(x = type, y = lag)) + geom_boxplot() +
  ylab(expression("lag phase (minutes)")) + 
  xlab("") +
  facet_wrap(~ type2, scales = "free_x", ncol = 5) +
  geom_signif(comparisons = list(c("Ancestor", "BAC_14")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "BAC_35")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "PEX_32")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "PEX_33")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "PEX_4")), map_signif_level = TRUE)
vmax3 <- ggplot(df5, aes(x = type, y = vmax)) + geom_boxplot() + 
  ylab(expression(V["max"])) + 
  xlab("") +
  facet_wrap(~ type2, scales = "free_x", ncol = 5) + 
  geom_signif(comparisons = list(c("Ancestor", "PEX_32")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "PEX_4")), map_signif_level = TRUE)
fod3 <- ggplot(df5, aes(x = type, y = finalOD)) + geom_boxplot() + 
  ylab(expression(paste("final ", "OD"["600"], sep = " "))) + 
  xlab("") +
  facet_wrap(~ type2, scales = "free_x", ncol = 5) + 
  geom_signif(comparisons = list(c("Ancestor", "BAC_14")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "BAC_35")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "BAC_7")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "PEX_32")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "PEX_33")), map_signif_level = TRUE) +
  geom_signif(comparisons = list(c("Ancestor", "PEX_4")), map_signif_level = TRUE)
plot_grid(lagp3, vmax3, fod3, nrow = 3)
dev.off()

shcomp <- list(c("Ancestor", "BAC_14"),c("Ancestor", "BAC_35"),c("Ancestor", "BAC_7"),c("Ancestor", "PEX_32"),c("Ancestor", "PEX_33"),c("Ancestor", "PEX_4"))
lag_range <- c(147, 225)
pexlagcomp <- list(c("Ancestor", "PEX_32"),c("Ancestor", "PEX_33"),c("Ancestor", "PEX_4"))
pexlag <- ggplot(pex, aes(x = type, y = lag)) + geom_boxplot() +
  ylab(expression("lag phase (minutes)")) + 
  xlab("") +
  facet_wrap(~ type2, scales = "free_x", ncol = 5) +
  geom_signif(comparisons = pexlagcomp, map_signif_level = TRUE, step_increase = 0.05) +
  ylim(lag_range) +
  ylab("")
baclagcomp <- list(c("Ancestor", "BAC_14"),c("Ancestor", "BAC_35"))
baclag <- ggplot(bac, aes(x = type, y = lag)) + geom_boxplot() +
  ylab(expression("lag phase (minutes)")) + 
  xlab("") +
  facet_wrap(~ type2, scales = "free_x", ncol = 5) +
  geom_signif(comparisons = baclagcomp, map_signif_level = TRUE, step_increase = 0.05) +
  ylim(lag_range)
lag_row <- plot_grid(baclag, pexlag)
vm_range <- c(1.5, 2.9)
pexmaxcomp <- list(c("Ancestor", "PEX_32"),c("Ancestor", "PEX_4"))
pexmax <- ggplot(pex, aes(x = type, y = vmax)) + geom_boxplot() + 
  ylab(expression(V["max"])) + 
  xlab("") +
  facet_wrap(~ type2, scales = "free_x", ncol = 5) + 
  geom_signif(comparisons = pexmaxcomp, map_signif_level = TRUE, step_increase = 0.05) +
  ylim(vm_range) +
  ylab("")
bacmax <- ggplot(bac, aes(x = type, y = vmax)) + geom_boxplot() + 
  ylab(expression(V["max"])) + 
  xlab("") +
  facet_wrap(~ type2, scales = "free_x", ncol = 5) + 
  ylim(vm_range)
max_row <- plot_grid(bacmax, pexmax)
fod_range <- ggplot_build(fod3)$layout$panel_scales_y[[1]]$range$range
pexfodcomp <- list(c("Ancestor", "PEX_32"),c("Ancestor", "PEX_33"),c("Ancestor", "PEX_4"))
pexfod <- ggplot(pex, aes(x = type, y = finalOD)) + geom_boxplot() + 
  ylab(expression(paste("final ", "OD"["600"], sep = " "))) + 
  xlab("") +
  facet_wrap(~ type2, scales = "free_x", ncol = 5) + 
  geom_signif(comparisons = pexfodcomp, map_signif_level = TRUE, step_increase = 0.05) +
  ylim(fod_range) +
  ylab("")
bacfodcomp <- list(c("Ancestor", "BAC_14"),c("Ancestor", "BAC_35"),c("Ancestor", "BAC_7"))
bacfod <- ggplot(bac, aes(x = type, y = finalOD)) + geom_boxplot() + 
  ylab(expression(paste("final ", "OD"["600"], sep = " "))) + 
  xlab("") +
  facet_wrap(~ type2, scales = "free_x", ncol = 5) + 
  geom_signif(comparisons = bacfodcomp, map_signif_level = TRUE, step_increase = 0.05) +
  ylim(fod_range)
fod_row <- plot_grid(bacfod, pexfod)

png("results/growth_data/20190906_gp_sh_custom.png", width = 2 * 480, height = 2.5 * 480)
plot_grid(lag_row, max_row, fod_row, nrow = 3)
dev.off()


mod_con <- function(inDf, intStrain, intFormula, intLevel1, intLevel2) {
  df2 <- subset(inDf, strain == intStrain)
  mod <- lm(formula = intFormula, data = df2)
  con <- contrast(mod, list(type = intLevel1), list(type = intLevel2))
  return(con)
}

mod_con(df2, "ATCC6538", vmax~type, "Ancestor", "BAC_17")

sink("results/growth_data/stats.txt")
df2 %>%
  split(.$strain) %>%
  map(~ lm(lag ~ type, data = .)) %>%
  map(summary)

df2 %>%
  split(.$strain) %>%
  map(~ lm(vmax ~ type, data = .)) %>%
  map(summary)

df2 %>%
  split(.$strain) %>%
  map(~ lm(finalOD ~ type, data = .)) %>%
  map(summary)
sink()


