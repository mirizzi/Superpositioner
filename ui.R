library(shiny)

shinyUI(fluidPage(
  titlePanel("Harmonics superposition"),
  fluidRow(
    p("This application illustrates superpositions of harmonic oscillations. 
      They play an important role in for instance musical instruments: 
      The displacement of a string of a guitar or the air pressure inside a trupet are described by harmonic oscillations 
      as functions of both position and time. In general, the dynamics of such a string or the air pressure are not described 
      by an oscillation of one single frequency, but by a superposition (i.e. sum) of multiple frequencies, 
      each with a specific amplitude. "),
    p("In a musical instrument, such a superposition consists of a fundamental frequency and integer multiples of the 
      latter, commonly called overtones or harmonics. All these frequencies correspond to individual notes, and in a 
      superposition they form an interval or a chord. In the given application, you can create a superposition of the first six 
      harmonics, corresponding to the notes C - C - G - C - E - G on a brass instrument for instance, using the sliders in the 
      left panel. Both the resulting superposition (top) and the individual harmonics with their amplitudes (bottom) are plotted
      in the right panel. ")
    ),
    sidebarLayout(
        sidebarPanel(
            sliderInput('f1', 'fundamental frequency',value = 1, min = 0, max = 1, step = 0.01),
            sliderInput('f2', 'second harmonic',value = 0, min = 0, max = 1, step = 0.01),
            sliderInput('f3', 'third harmonic',value = 0, min = 0, max = 1, step = 0.01),
            sliderInput('f4', 'fourth harmonic',value = 0, min = 0, max = 1, step = 0.01),
            sliderInput('f5', 'fifth harmonic',value = 0, min = 0, max = 1, step = 0.01),
            sliderInput('f6', 'sixthth harmonic',value = 0, min = 0, max = 1, step = 0.01)
        ),
        mainPanel(
            plotOutput('sumPlot'),
            plotOutput('componentsPlot')
        )
    )
))