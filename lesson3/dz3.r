df <- read.csv("c:\\Users\\pasha\\OneDrive\\Рабочий стол\\lesson3\\zd3.csv")
print(head(df))
df <- df %>%
  filter(Income > 30000)

print(nrow(df))
df <- df %>%
select(Id, Year_Birth, Education, Marital_Status, Income, Response)
current_year <- 2023
df <- df %>%
  mutate(Age = current_year - Year_Birth)

df <- df %>%
  mutate(Rich_flag = Income > 80000)
print(head(df))
  summary_df <- df %>%
  group_by(Education) %>%  
  summarize(Average_Income = mean(Income)) 
print(summary_df)
df <- df %>%
  left_join(summary_df, by = "Education")
print(head(df))