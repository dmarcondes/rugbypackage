shinyUI(fluidPage(
  
  titlePanel("Rugby Stats"),
  sidebarLayout(position="left",
    sidebarPanel(h2("Statistics in a Rugby Game",align = "center"),
                 p("For description and manual download the Rugby R package at https://github.com/dmarcondes/rugbypackage.",align="center"),
                 selectInput("dataset", "Download", 
                             choices = "Stats.csv"),
                 downloadButton('downloadData', 'Download')),
   

    mainPanel(h3("The easiest way to get the stats from a Rugby Game, creating stats for 14 players' attributes and giving
                to the user the means and the totals for each attribute.",align="center"))),
             
    fluidRow(      
      column(3,
             checkboxInput("gameover", label = h3("Show Stats"), value = FALSE)),
      column(3,
             numericInput("players", label = "Players", value = 15),
             numericInput("pointo",label = "Opponent score",value = 0),
             br(),
             textInput("team1",value = "Our Team",label="Home"),
             br(),
             textInput("team2",value = "Their Team",label="Away")),
             
      column(5,
             h3("Score"),
             h3(textOutput("Score")),
             h3("Note:"),             
             helpText("Players is the number of players that played the game, substitutes that did not get in the game are not accountable for"))),
               
  
              
  fluidRow(
    column(3, h3("Players"),
           textInput("p1",value = "Loosehead Prop",label=""),
           textInput("p2",value = "Hooker",label=""),
           textInput("p3",value = "Tighthead Prop",label=""),
           textInput("p4",value = "Number-4 Lock",label=""),
           textInput("p5",value = "Number-5 Lock",label=""),
           textInput("p6",value = "Blindside Flanker",label=""),
           textInput("p7",value = "Number-8",label=""),
           textInput("p8",value = "Openside Flanker",label=""),
           textInput("p9",value = "Scrum-half",label="")),
    
    column(3,h3(" . "),
           textInput("p10",value = "Fly-half",label=""),
           textInput("p11",value = "Left-wing",label=""),
           textInput("p12",value = "Inside-centre",label=""),
           textInput("p13",value = "Outside-centre",label=""),
           textInput("p14",value = "Right-wing",label=""),
           textInput("p15",value = "Fullback",label=""),
           textInput("p16",value = "Sub1",label=""),
           textInput("p17",value = "Sub2",label=""),
           textInput("p18",value = "Sub3",label="")),
    
    column(3,h3(" . "),
           textInput("p19",value = "Sub4",label=""),
           textInput("p20",value = "Sub5",label=""),
           textInput("p21",value = "Sub6",label=""),
           textInput("p22",value = "Sub7",label=""),
           textInput("p23",value = "Sub8",label=""))),
  
  
  fluidRow(
    
    column(2, h3("Tackle"),
           numericInput("t1",label = 1,value = 0),
           numericInput("t2",label = "",value = 0),
           br(),
           numericInput("t3",label = "",value = 0),
           numericInput("t4",label = "",value = 0),
           br(),
           numericInput("t5",label = 5,value = 0),
           numericInput("t6",label = "",value = 0),
           br(),
           numericInput("t7",label = "",value = 0),
           numericInput("t8",label = "",value = 0),
           br(),
           numericInput("t9",label = "",value = 0),
           numericInput("t10",label = 10,value = 0),
           br(),
           numericInput("t11",label = "",value = 0),
           numericInput("t12",label = "",value = 0),
           br(),
           numericInput("t13",label = "",value = 0),
           numericInput("t14",label = "",value = 0),
           br(),
           numericInput("t15",label = 15,value = 0),
           numericInput("t16",label = "",value = 0),
           br(),
           numericInput("t17",label = "",value = 0),
           numericInput("t18",label = "",value = 0),
           br(),
           numericInput("t19",label = "",value = 0),
           numericInput("t20",label = 20,value = 0),
           br(),
           numericInput("t21",label = "",value = 0),
           numericInput("t22",label = "",value = 0),
           br(),
           numericInput("t23",label = "",value = 0)),
    
    column(2, h3("Missed Tackle"),
           numericInput("mt1",label = 1,value = 0),
           numericInput("mt2",label = "",value = 0),
           br(),
           numericInput("mt3",label = "",value = 0),
           numericInput("mt4",label = "",value = 0),
           br(),
           numericInput("mt5",label = 5,value = 0),
           numericInput("mt6",label = "",value = 0),
           br(),
           numericInput("mt7",label = "",value = 0),
           numericInput("mt8",label = "",value = 0),
           br(),
           numericInput("mt9",label = "",value = 0),
           numericInput("mt10",label = 10,value = 0),
           br(),
           numericInput("mt11",label = "",value = 0),
           numericInput("mt12",label = "",value = 0),
           br(),
           numericInput("mt13",label = "",value = 0),
           numericInput("mt14",label = "",value = 0),
           br(),
           numericInput("mt15",label = 15,value = 0),
           numericInput("mt16",label = "",value = 0),
           br(),
           numericInput("mt17",label = "",value = 0),
           numericInput("mt18",label = "",value = 0),
           br(),
           numericInput("mt19",label = "",value = 0),
           numericInput("mt20",label = 20,value = 0),
           br(),
           numericInput("mt21",label = "",value = 0),
           numericInput("mt22",label = "",value = 0),
           br(),
           numericInput("mt23",label = "",value = 0)),
    
    column(2, h3("Right Pass"),
           numericInput("rp1",label = 1,value = 0),
           numericInput("rp2",label = "",value = 0),
           br(),
           numericInput("rp3",label = "",value = 0),
           numericInput("rp4",label = "",value = 0),
           br(),
           numericInput("rp5",label = 5,value = 0),
           numericInput("rp6",label = "",value = 0),
           br(),
           numericInput("rp7",label = "",value = 0),
           numericInput("rp8",label = "",value = 0),
           br(),
           numericInput("rp9",label = "",value = 0),
           numericInput("rp10",label = 10,value = 0),
           br(),
           numericInput("rp11",label = "",value = 0),
           numericInput("rp12",label = "",value = 0),
           br(),
           numericInput("rp13",label = "",value = 0),
           numericInput("rp14",label = "",value = 0),
           br(),
           numericInput("rp15",label = 15,value = 0),
           numericInput("rp16",label = "",value = 0),
           br(),
           numericInput("rp17",label = "",value = 0),
           numericInput("rp18",label = "",value = 0),
           br(),
           numericInput("rp19",label = "",value = 0),
           numericInput("rp20",label = 20,value = 0),
           br(),
           numericInput("rp21",label = "",value = 0),
           numericInput("rp22",label = "",value = 0),
           br(),
           numericInput("rp23",label = "",value = 0)),
    
    column(2, h3("Turnover"),
           numericInput("tu1",label = 1,value = 0),
           numericInput("tu2",label = "",value = 0),
           br(),
           numericInput("tu3",label = "",value = 0),
           numericInput("tu4",label = "",value = 0),
           br(),
           numericInput("tu5",label = 5,value = 0),
           numericInput("tu6",label = "",value = 0),
           br(),
           numericInput("tu7",label = "",value = 0),
           numericInput("tu8",label = "",value = 0),
           br(),
           numericInput("tu9",label = "",value = 0),
           numericInput("tu10",label = 10,value = 0),
           br(),
           numericInput("tu11",label = "",value = 0),
           numericInput("tu12",label = "",value = 0),
           br(),
           numericInput("tu13",label = "",value = 0),
           numericInput("tu14",label = "",value = 0),
           br(),
           numericInput("tu15",label = 15,value = 0),
           numericInput("tu16",label = "",value = 0),
           br(),
           numericInput("tu17",label = "",value = 0),
           numericInput("tu18",label = "",value = 0),
           br(),
           numericInput("tu19",label = "",value = 0),
           numericInput("tu20",label = 20,value = 0),
           br(),
           numericInput("tu21",label = "",value = 0),
           numericInput("tu22",label = "",value = 0),
           br(),
           numericInput("tu23",label = "",value = 0)),
    
    
    column(2, h3("Wrong Pass"),
           numericInput("wp1",label = 1,value = 0),
           numericInput("wp2",label = "",value = 0),
           br(),
           numericInput("wp3",label = "",value = 0),
           numericInput("wp4",label = "",value = 0),
           br(),
           numericInput("wp5",label = 5,value = 0),
           numericInput("wp6",label = "",value = 0),
           br(),
           numericInput("wp7",label = "",value = 0),
           numericInput("wp8",label = "",value = 0),
           br(),
           numericInput("wp9",label = "",value = 0),
           numericInput("wp10",label = 10,value = 0),
           br(),
           numericInput("wp11",label = "",value = 0),
           numericInput("wp12",label = "",value = 0),
           br(),
           numericInput("wp13",label = "",value = 0),
           numericInput("wp14",label = "",value = 0),
           br(),
           numericInput("wp15",label = 15,value = 0),
           numericInput("wp16",label = "",value = 0),
           br(),
           numericInput("wp17",label = "",value = 0),
           numericInput("wp18",label = "",value = 0),
           br(),
           numericInput("wp19",label = "",value = 0),
           numericInput("wp20",label = 20,value = 0),
           br(),
           numericInput("wp21",label = "",value = 0),
           numericInput("wp22",label = "",value = 0),
           br(),
           numericInput("wp23",label = "",value = 0))),
  br(),
  
  fluidRow(
    column(2, h3("Steal"),
           numericInput("s1",label = 1,value = 0),
           numericInput("s2",label = "",value = 0),
           br(),
           numericInput("s3",label = "",value = 0),
           numericInput("s4",label = "",value = 0),
           br(),
           numericInput("s5",label = 5,value = 0),
           numericInput("s6",label = "",value = 0),
           br(),
           numericInput("s7",label = "",value = 0),
           numericInput("s8",label = "",value = 0),
           br(),
           numericInput("s9",label = "",value = 0),
           numericInput("s10",label = 10,value = 0),
           br(),
           numericInput("s11",label = "",value = 0),
           numericInput("s12",label = "",value = 0),
           br(),
           numericInput("s13",label = "",value = 0),
           numericInput("s14",label = "",value = 0),
           br(),
           numericInput("s15",label = 15,value = 0),
           numericInput("s16",label = "",value = 0),
           br(),
           numericInput("s17",label = "",value = 0),
           numericInput("s18",label = "",value = 0),
           br(),
           numericInput("s19",label = "",value = 0),
           numericInput("s20",label = 20,value = 0),
           br(),
           numericInput("s21",label = "",value = 0),
           numericInput("s22",label = "",value = 0),
           br(),
           numericInput("s23",label = "",value = 0)),
    
    column(2, h3("Conversion"),
           numericInput("con1",label = 1,value = 0),
           numericInput("con2",label = "",value = 0),
           br(),
           numericInput("con3",label = "",value = 0),
           numericInput("con4",label = "",value = 0),
           br(),
           numericInput("con5",label = 5,value = 0),
           numericInput("con6",label = "",value = 0),
           br(),
           numericInput("con7",label = "",value = 0),
           numericInput("con8",label = "",value = 0),
           br(),
           numericInput("con9",label = "",value = 0),
           numericInput("con10",label = 10,value = 0),
           br(),
           numericInput("con11",label = "",value = 0),
           numericInput("con12",label = "",value = 0),
           br(),
           numericInput("con13",label = "",value = 0),
           numericInput("con14",label = "",value = 0),
           br(),
           numericInput("con15",label = 15,value = 0),
           numericInput("con16",label = "",value = 0),
           br(),
           numericInput("con17",label = "",value = 0),
           numericInput("con18",label = "",value = 0),
           br(),
           numericInput("con19",label = "",value = 0),
           numericInput("con20",label = 20,value = 0),
           br(),
           numericInput("con21",label = "",value = 0),
           numericInput("con22",label = "",value = 0),
           br(),
           numericInput("con23",label = "",value = 0)),
    
    column(2, h3("Penalty"),
           numericInput("pen1",label = 1,value = 0),
           numericInput("pen2",label = "",value = 0),
           br(),
           numericInput("pen3",label = "",value = 0),
           numericInput("pen4",label = "",value = 0),
           br(),
           numericInput("pen5",label = 5,value = 0),
           numericInput("pen6",label = "",value = 0),
           br(),
           numericInput("pen7",label = "",value = 0),
           numericInput("pen8",label = "",value = 0),
           br(),
           numericInput("pen9",label = "",value = 0),
           numericInput("pen10",label = 10,value = 0),
           br(),
           numericInput("pen11",label = "",value = 0),
           numericInput("pen12",label = "",value = 0),
           br(),
           numericInput("pen13",label = "",value = 0),
           numericInput("pen14",label = "",value = 0),
           br(),
           numericInput("pen15",label = 15,value = 0),
           numericInput("pen16",label = "",value = 0),
           br(),
           numericInput("pen17",label = "",value = 0),
           numericInput("pen18",label = "",value = 0),
           br(),
           numericInput("pen19",label = "",value = 0),
           numericInput("pen20",label = 20,value = 0),
           br(),
           numericInput("pen21",label = "",value = 0),
           numericInput("pen22",label = "",value = 0),
           br(),
           numericInput("pen23",label = "",value = 0)),
    
    
    column(2, h3("Conv Penalty"),
           numericInput("conp1",label = 1,value = 0),
           numericInput("conp2",label = "",value = 0),
           br(),
           numericInput("conp3",label = "",value = 0),
           numericInput("conp4",label = "",value = 0),
           br(),
           numericInput("conp5",label = 5,value = 0),
           numericInput("conp6",label = "",value = 0),
           br(),
           numericInput("conp7",label = "",value = 0),
           numericInput("conp8",label = "",value = 0),
           br(),
           numericInput("conp9",label = "",value = 0),
           numericInput("conp10",label=10,value=0),
           br(),
           numericInput("conp11",label = "",value = 0),
           numericInput("conp12",label = "",value = 0),
           br(),
           numericInput("conp13",label = "",value = 0),
           numericInput("conp14",label = "",value = 0),
           br(),
           numericInput("conp15",label = 15,value = 0),
           numericInput("conp16",label = "",value = 0),
           br(),
           numericInput("conp17",label = "",value = 0),
           numericInput("conp18",label = "",value = 0),
           br(),
           numericInput("conp19",label = "",value = 0),
           numericInput("conp20",label = 20,value = 0),
           br(),
           numericInput("conp21",label = "",value = 0),
           numericInput("conp22",label = "",value = 0),
           br(),
           numericInput("conp23",label = "",value = 0))),
  
  fluidRow(
    
    column(2, h3("Try"),
           numericInput("tr1",label = 1,value = 0),
           numericInput("tr2",label = "",value = 0),
           br(),
           numericInput("tr3",label = "",value = 0),
           numericInput("tr4",label = "",value = 0),
           br(),
           numericInput("tr5",label = 5,value = 0),
           numericInput("tr6",label = "",value = 0),
           br(),
           numericInput("tr7",label = "",value = 0),
           numericInput("tr8",label = "",value = 0),
           br(),
           numericInput("tr9",label = "",value = 0),
           numericInput("tr10",label = 10,value = 0),
           br(),
           numericInput("tr11",label = "",value = 0),
           numericInput("tr12",label = "",value = 0),
           br(),
           numericInput("tr13",label = "",value = 0),
           numericInput("tr14",label = "",value = 0),
           br(),
           numericInput("tr15",label = 15,value = 0),
           numericInput("tr16",label = "",value = 0),
           br(),
           numericInput("tr17",label = "",value = 0),
           numericInput("tr18",label = "",value = 0),
           br(),
           numericInput("tr19",label = "",value = 0),
           numericInput("tr20",label = 20,value = 0),
           br(),
           numericInput("tr21",label = "",value = 0),
           numericInput("tr22",label = "",value = 0),
           br(),
           numericInput("tr23",label = "",value = 0)),
    
    column(2, h3("Drop Goal"),
           numericInput("dg1",label = 1,value = 0),
           numericInput("dg2",label = "",value = 0),
           br(),
           numericInput("dg3",label = "",value = 0),
           numericInput("dg4",label = "",value = 0),
           br(),
           numericInput("dg5",label = 5,value = 0),
           numericInput("dg6",label = "",value = 0),
           br(),
           numericInput("dg7",label = "",value = 0),
           numericInput("dg8",label = "",value = 0),
           br(),
           numericInput("dg9",label = "",value = 0),
           numericInput("dg10",label = 10,value = 0),
           br(),
           numericInput("dg11",label = "",value = 0),
           numericInput("dg12",label = "",value = 0),
           br(),
           numericInput("dg13",label = "",value = 0),
           numericInput("dg14",label = "",value = 0),
           br(),
           numericInput("dg15",label = 15,value = 0),
           numericInput("dg16",label = "",value = 0),
           br(),
           numericInput("dg17",label = "",value = 0),
           numericInput("dg18",label = "",value = 0),
           br(),
           numericInput("dg19",label = "",value = 0),
           numericInput("dg20",label = 20,value = 0),
           br(),
           numericInput("dg21",label = "",value = 0),
           numericInput("dg22",label = "",value = 0),
           br(),
           numericInput("dg23",label = "",value = 0)),
    
    column(2, h3("Yellow Card"),
           numericInput("y1",label = 1,value = 0),
           numericInput("y2",label = "",value = 0),
           br(),
           numericInput("y3",label = "",value = 0),
           numericInput("y4",label = "",value = 0),
           br(),
           numericInput("y5",label = 5,value = 0),
           numericInput("y6",label = "",value = 0),
           br(),
           numericInput("y7",label = "",value = 0),
           numericInput("y8",label = "",value = 0),
           br(),
           numericInput("y9",label = "",value = 0),
           numericInput("y10",label = 10,value = 0),
           br(),
           numericInput("y11",label = "",value = 0),
           numericInput("y12",label = "",value = 0),
           br(),
           numericInput("y13",label = "",value = 0),
           numericInput("y14",label = "",value = 0),
           br(),
           numericInput("y15",label = 15,value = 0),
           numericInput("y16",label = "",value = 0),
           br(),
           numericInput("y17",label = "",value = 0),
           numericInput("y18",label = "",value = 0),
           br(),
           numericInput("y19",label = "",value = 0),
           numericInput("y20",label = 20,value = 0),
           br(),
           numericInput("y21",label = "",value = 0),
           numericInput("y22",label = "",value = 0),
           br(),
           numericInput("y23",label = "",value = 0)),
    
    column(2, h3("Red Card"),
           numericInput("r1",label = 1,value = 0),
           numericInput("r2",label = "",value = 0),
           br(),
           numericInput("r3",label = "",value = 0),
           numericInput("r4",label = "",value = 0),
           br(),
           numericInput("r5",label = 5,value = 0),
           numericInput("r6",label = "",value = 0),
           br(),
           numericInput("r7",label = "",value = 0),
           numericInput("r8",label = "",value = 0),
           br(),
           numericInput("r9",label = "",value = 0),
           numericInput("r10",label = 10,value = 0),
           br(),
           numericInput("r11",label = "",value = 0),
           numericInput("r12",label = "",value = 0),
           br(),
           numericInput("r13",label = "",value = 0),
           numericInput("r14",label = "",value = 0),
           br(),
           numericInput("r15",label = 15,value = 0),
           numericInput("r16",label = "",value = 0),
           br(),
           numericInput("r17",label = "",value = 0),
           numericInput("r18",label = "",value = 0),
           br(),
           numericInput("r19",label = "",value = 0),
           numericInput("r20",label = 20,value = 0),
           br(),
           numericInput("r21",label = "",value = 0),
           numericInput("r22",label = "",value = 0),
           br(),
           numericInput("r23",label = "",value = 0))),
    
    
  dataTableOutput("tabela"),
  
     
  
  br(),
  br(),
  br(),
  h6("Developed by Diego Ribeiro Marcondes. For help download the Rugby R Pack or contact me diegormmarcondes@gmail.com",align="center")
  ))
              
  
  
  