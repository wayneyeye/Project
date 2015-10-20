library(shiny)
shinyUI(
        pageWithSidebar(
                headerPanel("A little demo on shiny"),
                sidebarPanel(
                        h3('You can know what kind of iris you have by Shiny!'),
                        h4('Here\'s your flower\'s data input...'),
                        numericInput('sepal_l','Sepal Length',6,min=4.0,max=8.0,step=0.1),
                        numericInput('sepal_w','Sepal Width',3,min=2.0,max=4.5,step=0.1),
                        numericInput('petal_l','Petal Length',3,min=1.0,max=7.0,step=0.1),
                        numericInput('petal_w','Petal Width',1,min=0.1,max=2.5,step=0.1),
                        h4('Here\'s some typical data'),
                        h6('setosa: 5.0, 3.4, 1.5, 0.2'),
                        h6('veriscolor: 5.9, 2.8, 4.4, 1.3'),
                        h6('virginica: 6.5, 3.0, 5.6, 2.0')
                ),
                mainPanel(
                        h4('If you don\'t know what does sepal or petal mean...'),
                        h4('here\'s a picture to help you out!'),
                        img(src="iris_petal_sepal.png",height=216,width=200),
                        h6('source: http://sebastianraschka.com/Articles/2015_pca_in_3_steps.html'),
                        h2('Hum... let me see (need to wait for a few seconds...)'),
                        h3('The Iris you have is'),
                        verbatimTextOutput("result")
                        )
        )
)