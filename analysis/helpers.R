# Function to clean data
clean_rct_data <- function(data) {
  data %>%
    mutate(across(where(is.character), as.factor)) %>%
    drop_na()
}

# Function to summarize the dataset
summarize_data <- function(data) {
  data %>%
    summary() %>%
    print()
}

# Function to check covariate balance between treatment and control
check_covariate_balance <- function(data) {
  data %>%
    group_by(treatment) %>%
    summarize(across(everything(), mean, na.rm = TRUE))
}

# Function for a basic difference-in-means analysis
difference_in_means <- function(data) {
  model <- lm(outcome ~ treatment, data = data)
  tidy(model)
}

# Function to plot treatment effects
plot_treatment_effects <- function(data) {
  ggplot(data, aes(x = treatment, y = outcome)) +
    geom_boxplot() +
    labs(title = "Treatment Effects", x = "Treatment Group", y = "Outcome") +
    theme_minimal()
}