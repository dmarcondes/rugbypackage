shinyServer(function(input, output){
  
    teste <- reactive({if(input$gameover==TRUE){
      Number <- 1:22
      Tackle <- c(input$t1,input$t2,input$t3,input$t4,input$t5,input$t6,input$t7,input$t8,input$t9,input$t10,input$t11,input$t12,input$t13,input$t14,input$t15,input$t16,input$t17,input$t18,input$t19,input$t20,input$t21,input$t22,input$t23)
      MissedTackle <- c(input$mt1,input$mt2,input$mt3,input$mt4,input$mt5,input$mt6,input$mt7,input$mt8,input$tm9,input$mt10,input$mt11,input$mt12,input$mt13,input$mt14,input$mt15,input$mt16,input$mt17,input$mt18,input$mt19,input$mt20,input$mt21,input$mt22,input$mt23)
      Name <- c(input$p1,input$p2,input$p3,input$p4,input$p5,input$p6,input$p7,input$p8,input$p9,input$p10,input$p11,input$p12,input$p13,input$p14,input$p15,input$p16,input$p17,input$p18,input$p19,input$p20,input$p21,input$p22,input$p23)
      RightPass <- c(input$rp1,input$rp2,input$rp3,input$rp4,input$rp5,input$rp6,input$rp7,input$rp8,input$rp9,input$rp10,input$rp11,input$rp12,input$rp13,input$rp14,input$rp15,input$rp16,input$rp17,input$rp18,input$rp19,input$rp20,input$rp21,input$rp22,input$rp23)
      Turnover <- c(input$tu1,input$tu2,input$tu3,input$tu4,input$tu5,input$tu6,input$tu7,input$tu8,input$tu9,input$tu10,input$tu11,input$tu12,input$tu13,input$tu14,input$tu15,input$tu16,input$tu17,input$tu18,input$tu19,input$tu20,input$tu21,input$tu22,input$tu23)
      WrongPass <- c(input$wp1,input$wp2,input$wp3,input$wp4,input$wp5,input$wp6,input$wp7,input$wp8,input$wp9,input$wp10,input$wp11,input$wp12,input$wp13,input$wp14,input$wp15,input$wp16,input$wp17,input$wp18,input$wp19,input$wp20,input$wp21,input$wp22,input$wp23)
      Steal <- c(input$s1,input$s2,input$s3,input$s4,input$s5,input$s6,input$s7,input$s8,input$s9,input$s10,input$s11,input$s12,input$s13,input$s14,input$s15,input$s16,input$s17,input$s18,input$s19,input$s20,input$s21,input$s22,input$s23)
      Conversion <- c(input$con1,input$con2,input$con3,input$con4,input$con5,input$con6,input$con7,input$con8,input$con9,input$con10,input$con11,input$con12,input$con13,input$con14,input$con15,input$con16,input$con17,input$con18,input$con19,input$con20,input$con21,input$con22,input$con23)
      Penalty <- c(input$pen1,input$pen2,input$pen3,input$pen4,input$pen5,input$pen6,input$pen7,input$pen8,input$pen9,input$pen10,input$pen11,input$pen12,input$pen13,input$pen14,input$pen15,input$pen16,input$pen17,input$pen18,input$pen19,input$pen20,input$pen21,input$pen22,input$pen23)
      ConPenalty <- c(input$conp1,input$conp2,input$conp3,input$conp4,input$conp5,input$conp6,input$conp7,input$conp8,input$conp9,input$conp10,input$conp11,input$conp12,input$conp13,input$conp14,input$conp15,input$conp16,input$conp17,input$conp18,input$conp19,input$conp20,input$conp21,input$conp22,input$conp23)
      Try <- c(input$tr1,input$tr2,input$tr3,input$tr4,input$tr5,input$tr6,input$tr7,input$tr8,input$tr9,input$tr10,input$tr11,input$tr12,input$tr13,input$tr14,input$tr15,input$tr16,input$tr17,input$tr18,input$tr19,input$tr20,input$tr21,input$tr22,input$tr23)
      DropGoal <- c(input$dg1,input$dg2,input$dg3,input$dg4,input$dg5,input$dg6,input$dg7,input$dg8,input$dg9,input$dg10,input$dg11,input$dg12,input$dg13,input$dg14,input$dg15,input$dg16,input$dg17,input$dg18,input$dg19,input$dg20,input$dg21,input$dg22,input$dg23)
      YellowCard <- c(input$y1,input$y2,input$y3,input$y4,input$y5,input$y6,input$y7,input$y8,input$y9,input$y10,input$y11,input$y12,input$y13,input$y14,input$y15,input$y16,input$y17,input$y18,input$y19,input$y20,input$y21,input$y22,input$y23)
      RedCard <- c(input$r1,input$r2,input$r3,input$r4,input$r5,input$r6,input$r7,input$r8,input$r9,input$r10,input$r11,input$r12,input$r13,input$r14,input$r15,input$r16,input$r17,input$r18,input$r19,input$r20,input$r21,input$r22,input$r23)
      Points <- c((5*input$tr1+2*input$con1+3*input$conp1+3*input$dg1),(5*input$tr2+2*input$con2+3*input$conp2+3*input$dg2),(5*input$tr3+2*input$con3+3*input$conp3+3*input$dg3),(5*input$tr4+2*input$con4+3*input$conp4+3*input$dg4),(5*input$tr5+2*input$con5+3*input$conp5+3*input$dg5),(5*input$tr6+2*input$con6+3*input$conp6+3*input$dg6),(5*input$tr7+2*input$con7+3*input$conp7+3*input$dg7),(5*input$tr8+2*input$con8+3*input$conp8+3*input$dg8),(5*input$tr9+2*input$con9+3*input$conp9+3*input$dg9),(5*input$tr10+2*input$con10+3*input$conp10+3*input$dg10),(5*input$tr11+2*input$con11+3*input$conp11+3*input$dg11),(5*input$tr12+2*input$con12+3*input$conp12+3*input$dg12),(5*input$tr13+2*input$con13+3*input$conp13+3*input$dg13),(5*input$tr14+2*input$con14+3*input$conp14+3*input$dg14),(5*input$tr15+2*input$con15+3*input$conp15+3*input$dg15),(5*input$tr16+2*input$con16+3*input$conp16+3*input$dg16),(5*input$tr17+2*input$con17+3*input$conp17+3*input$dg17),(5*input$tr18+2*input$con18+3*input$conp18+3*input$dg18),(5*input$tr19+2*input$con19+3*input$conp19+3*input$dg19),(5*input$tr20+2*input$con20+3*input$conp20+3*input$dg20),(5*input$tr21+2*input$con21+3*input$conp21+3*input$dg21),(5*input$tr22+2*input$con22+3*input$conp22+3*input$dg22),(5*input$tr23+2*input$con23+3*input$conp23+3*input$dg23))
      Mean <- c("","Mean",sum(Tackle)/input$players,sum(MissedTackle)/input$players,sum(RightPass)/input$players,sum(Turnover)/input$players,sum(WrongPass)/input$players,sum(Steal)/input$players,sum(Conversion)/input$players,sum(Penalty)/input$players,sum(ConPenalty)/input$players,sum(Try)/input$players,sum(DropGoal)/input$players,sum(YellowCard)/input$players,sum(RedCard)/input$players,sum(Points)/input$players)
      Total <- c("","Mean",sum(Tackle),sum(MissedTackle),sum(RightPass),sum(Turnover),sum(WrongPass),sum(Steal),sum(Conversion),sum(Penalty),sum(ConPenalty),sum(Try),sum(DropGoal),sum(YellowCard),sum(RedCard),sum(Points))
      
      tabela <- cbind(Number,Name,Tackle, MissedTackle,RightPass,Turnover,WrongPass,Steal,Conversion,Penalty,ConPenalty,Try,DropGoal,YellowCard,RedCard,Points)}
      tabela <- rbind(tabela,Mean,Total)      
      })
    Score <- reactive({paste(input$team1,sum((5*input$tr1+2*input$con1+3*input$conp1+3*input$dg1),(5*input$tr2+2*input$con2+3*input$conp2+3*input$dg2),(5*input$tr3+2*input$con3+3*input$conp3+3*input$dg3),(5*input$tr4+2*input$con4+3*input$conp4+3*input$dg4),(5*input$tr5+2*input$con5+3*input$conp5+3*input$dg5),(5*input$tr6+2*input$con6+3*input$conp6+3*input$dg6),(5*input$tr7+2*input$con7+3*input$conp7+3*input$dg7),(5*input$tr8+2*input$con8+3*input$conp8+3*input$dg8),(5*input$tr9+2*input$con9+3*input$conp9+3*input$dg9),(5*input$tr10+2*input$con10+3*input$conp10+3*input$dg10),(5*input$tr11+2*input$con11+3*input$conp11+3*input$dg11),(5*input$tr12+2*input$con12+3*input$conp12+3*input$dg12),(5*input$tr13+2*input$con13+3*input$conp13+3*input$dg13),(5*input$tr14+2*input$con14+3*input$conp14+3*input$dg14),(5*input$tr15+2*input$con15+3*input$conp15+3*input$dg15),(5*input$tr16+2*input$con16+3*input$conp16+3*input$dg16),(5*input$tr17+2*input$con17+3*input$conp17+3*input$dg17),(5*input$tr18+2*input$con18+3*input$conp18+3*input$dg18),(5*input$tr19+2*input$con19+3*input$conp19+3*input$dg19),(5*input$tr20+2*input$con20+3*input$conp20+3*input$dg20),(5*input$tr21+2*input$con21+3*input$conp21+3*input$dg21),(5*input$tr22+2*input$con22+3*input$conp22+3*input$dg22),(5*input$tr23+2*input$con23+3*input$conp23+3*input$dg23)),"Vs", input$pointo,input$team2)})
    
    output$Score <- renderText(Score())    
    output$tabela <- renderDataTable(teste()) 
    
    output$downloadData <- downloadHandler(
      filename = function() { paste(input$dataset, '.csv', sep='') },
      content = function(file) {
        write.csv(teste(), file)
    })}
        
 )
   
  

