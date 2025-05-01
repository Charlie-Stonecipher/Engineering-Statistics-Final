chord=chordlength
> mean(chord)
[1] 0.1365482
> mean(free)
[1] 50.86075
> median(chord)
[1] 0.1016
> median(free)
[1] 39.6
> range(chord)
[1] 0.0254 0.3048
> range(free)
[1] 31.7 71.3
> sd(chord)
[1] 0.09354073
> sd(free)
[1] 15.57278
> regression=lm(free~chord)
> summary(regression)

Call:
  lm(formula = free ~ chord)

Residuals:
  Min     1Q Median     3Q    Max 
-19.27 -11.32 -11.19  20.38  20.51 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)  50.7747     0.7112  71.398   <2e-16 ***
  chord         0.6304     4.2971   0.147    0.883    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 15.58 on 1501 degrees of freedom
Multiple R-squared:  1.434e-05,	Adjusted R-squared:  -0.0006519 
F-statistic: 0.02152 on 1 and 1501 DF,  p-value: 0.8834

> hist(chord, main = "Chord Length")
> hist(free, main = "Free-Stream Velocity")
> boxplot(chord, main = "Chord Length")
> boxplot(free, main = "Free-Stream Velocity")
> boxplot(chord,free, main = "Chord Length V.S. Free-Stream Velocity")
> plot(chord, free, main = "Chord Length V.S. Free-Stream Velocity")
> abline(regression)