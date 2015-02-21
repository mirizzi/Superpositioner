library(shiny)

shinyServer(
  function(input, output) 
  {
    output$sumPlot <- renderPlot({
      x <- seq(from=0, to=1, by=0.01);
      f1 <- input$f1;
      f2 <- input$f2;
      f3 <- input$f3;
      f4 <- input$f4;
      f5 <- input$f5;
      f6 <- input$f6;
      y <- f1*sin(2*pi*x) + f2*sin(2*pi*2*x) + f3*sin(2*pi*3*x) + f4*sin(2*pi*4*x) + f5*sin(2*pi*5*x) + f6*sin(2*pi*6*x);
      plot(x, y, type="l", xlab="Time", ylab="Amplitude", main="Superposition");
    })
    output$componentsPlot <- renderPlot({
      x <- seq(from=0, to=1, by=0.01);
      f1 <- input$f1;
      f2 <- input$f2;
      f3 <- input$f3;
      f4 <- input$f4;
      f5 <- input$f5;
      f6 <- input$f6;
      plot(0,0, xlim=c(0,1), ylim=c(-1,1), type="n", xlab="Time", ylab="Amplitude", main="Harmonics");
      if (f1!=0) lines(x, f1*sin(2*pi*x));
      if (f2!=0) lines(x, f2*sin(2*pi*2*x), col="blue");
      if (f3!=0) lines(x, f3*sin(2*pi*3*x), col="red");
      if (f4!=0) lines(x, f4*sin(2*pi*4*x), col="green");
      if (f5!=0) lines(x, f5*sin(2*pi*5*x), col="orange");
      if (f6!=0) lines(x, f6*sin(2*pi*6*x), col="gray");
    })
  }
)