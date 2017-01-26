    # Bar plot using `ggplot2`
    
    # Convert the character vector `Lead_Characters` 
    # into `data.frame` and change its column names
    df <- as.data.frame(table(Lead_Characters))
    names(df) <- c("FRIENDS", "Number_of_Dialogues")
    # Set name and dimensions for the plot
    png(paste0(WorkDir,"plots/episode",
               i, "frequency_ggplot2.png"),
        width = 850, height = 500)
    p <- ggplot(data = df, aes(x = FRIENDS, 
                               y = Number_of_Dialogues,
                               fill = FRIENDS)) +
      # Set plot type to Bar plot and adjust width of bars
      geom_bar(stat = "identity") +
      # Set theme to `minimal`
      theme_minimal() +
      # Set title for plot and lables for x & y axes
      labs(title = "Number of Dialogues by Lead Characters
           \n in F.R.I.E.N.D.S T.V series (1994-2004)",
           x = paste0("Episode #",i),
           y = "Number of Dialogues") +
      # Set text for Title, x & y axes labels
      theme(plot.title = element_text(size = 20, hjust = 0.5), 
            axis.text = element_text(face = "bold", size = 12),
            axis.title = element_text(face = "bold", size = 16),
            axis.title.y = element_text(vjust = 1.5),
            #Remove legend
            legend.position = "none") +
      # Set colors for bars
      scale_fill_manual(values = plot_colors) +
      # Convert vertical plot into horizontal one
      coord_flip()
    # Set name and dimensions for the plot and save it
    #ggsave(filename = paste0(WorkDir,"plots/episode",
    #                         i, "frequency_ggplot2.png"),
    #       width = 5, height = 5)
    print(p)
    dev.off()
