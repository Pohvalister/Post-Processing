fv_per_fct_box <- function(width = 12, collapsible = T, collapsed = T) {
  box(
    title = HTML('<p style="font-size:120%;">Expected Target Value (per function)</p>'),
    width = width, collapsible = collapsible, collapsed = collapsed,
    solidHeader = TRUE, status = "primary",
    sidebarPanel(
      width = 3,
      HTML('<p style="font-size:120%;">Range of the displayed budget values</p>'),

      textInput('FCEPlot.Min', label = RT_MIN_LABEL, value = ''),
      textInput('FCEPlot.Max', label = RT_MAX_LABEL, value = ''),

      checkboxInput('FCEPlot.show.mean',
                    label = 'show/hide mean',
                    value = T),

      checkboxInput('FCEPlot.show.median',
                    label = 'show/hide median',
                    value = F),
      checkboxInput('FCEPlot.show.CI',
                    label = 'show/hide mean +/- sd',
                    value = F),

      checkboxInput('FCEPlot.semilogx',
                    label = 'scale x axis log10',
                    value = T),

      checkboxInput('FCEPlot.semilogy',
                    label = 'scale y axis log10',
                    value = T),

      checkboxInput('FCEPlot.show.grad',
                    label = 'show runs intensity',
                    value = F),

      conditionalPanel(
        condition = 'input["FCEPlot.show.grad"] == true',
        column(
          width = 11, offset = 1,
          sliderInput('FCEPlot.show.intensity', label = "Runs intensity(%)",
                      min = -1, max = 1, value = 0, step = 0.1)
        )
      ),

      checkboxInput('FCEPlot.show.all',
                    label = 'show/hide multiple runs',
                    value = F),
      conditionalPanel(condition = 'input["FCEPlot.show.all"] == true',

                       fluidRow(column(
                         11,
                         offset = 1,
                         sliderInput('FCEPlot.show.density',
                                     label = "Runs density(%)",
                                     min = 1, max = 100, value = 50, step = 1),
                         checkboxInput('FCEPlot.show.best_of_all',
                                       label = 'show/hide best run',
                                       value = F),
                         checkboxInput('FCEPlot.show.pareto_optima',
                                       label = 'show/hide pareto optimal front',
                                       value = F)
                       ))),

      selectInput('FCEPlot.Format', label = 'select the figure format',
                  choices = supported_fig_format, selected = 'pdf'),

      downloadButton('FCEPlot.Download', label = 'download the figure')
    ),

    mainPanel(
      width = 9,
      column(
        width = 12, align = "center",
        HTML_P('The <b><i>mean, median and standard deviation</i></b> of the best function values
                found with a fixed-budget of evaluations are depicted against the budget.
                The displayed elements can be switched on and off by clicking on the legend on the right.
                A <b>tooltip</b> and <b>toolbar</b> appears when hovering over the figure.'),
        plotlyOutput('FCE_PER_FUN', height = plotly_height, width = plotly_width2)
      )
    )
  )
}