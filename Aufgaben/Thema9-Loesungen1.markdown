1.  **\<h4>Aufgabe\</h4>**\
    Geben Sie die Funktion für jedes Diagramm an!

    1.  Diagramm A

    ![image](media/supplements1/exercise1/unnamed-chunk-7-1.png)

    1.  Diagramm B

    ![image](media/supplements1/exercise1/unnamed-chunk-8-1.png)

    1.  Diagramm C

    ![image](media/supplements1/exercise1/unnamed-chunk-9-1.png)

    1.  Diagramm 4

    ![image](media/supplements1/exercise1/unnamed-chunk-10-1.png)

    1.  Diagramm 5

    ![image](media/supplements1/exercise1/unnamed-chunk-11-1.png)

    **\<h4>Lösung\</h4>**\

    1.  Diagramm A:

    ```{=html}
    <!-- -->
    ```
        ## (exp(x)/(1 + exp(x)))

    `exp(x)` bezeichent die e-Funktion: $e^x$, mit $e\approx 2.7178$,
    der Eulerschen Zahl.

    Oder anders gesagt:

    $Pr(y=1)= \mathcal{L}(x)$

    wobei $\mathcal{L}$ die *logistische Funktion* bezeichnet (im
    Folgenden mit `logist` abgekürzt).

    Oder:

    $Pr(y=1) = \mathcal{L}^{-1}(x)$

    1.  Diagramm B:

    ```{=html}
    <!-- -->
    ```
        ## logist(2 + x)

    1.  Diagramm C:

    ```{=html}
    <!-- -->
    ```
        ## logist(2 * x)

    1.  Diagramm D:

    ```{=html}
    <!-- -->
    ```
        ## logist(2 + 2 * x)

    1.  Diagramm E:

    ```{=html}
    <!-- -->
    ```
        ## logist(-2 * x)

2.  **\<h4>Aufgabe\</h4>**\
    Rechnen Sie von Logits in Inv-Logits um!

    Hinweise:

    -   Runden Sie auf zwei Dezimalstellen.

    -   Orientieren Sie sich am Vorgehen aus dem Unterricht.

    (a) 7

    (b) 3

    (c) 2

    **\<h4>Lösung\</h4>**\
    Die Umrechnungsformel lautet:

    $$p = \frac{e^x}{1+e^x}$$

    Beispiel für $x=1$:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## [1] 0.73

    Oder man nutzt die "fertige" Funktion zum Umrechnen:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## [1] 0.73

    (a) 1

    (b) 0.95

    (c) 0.88

3.  **\<h4>Aufgabe\</h4>**\
    Eine logistische Regression wurde an einen Datensatz angepasst. Es
    ergaben sich folgende Koeffizienten (jeweils Punktschätzer):

    `Konstante = -1.9` `x = 0.7` `z = 0.7`

    `x` ist ein metrischer Prädiktor mit einem Range von 0 bis 10; `z`
    ist eine binäre Variable mit den Werten 0 und 1.

    Visualisieren Sie die Kurven in einem Diagramm für

    1.  $\mathcal{L}$ vs. $x$

    2.  $Pr(y=1)$ vs. $x$

    **\<h4>Lösung\</h4>**\
    Wir definieren die Variablen:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    Hier ist das Diagramm mit *Logits* auf der Y-Achse:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    ![image](media/supplements1/exercise3/unnamed-chunk-3-1.png)

    Hier ist das Diagramm mit *Wahrscheinlichkeit* auf der Y-Achse:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    ![image](media/supplements1/exercise3/unnamed-chunk-4-1.png)

4.  **\<h4>Aufgabe\</h4>**\
    *Forschungsfrage*: Ist der Zusammenhang von Körpergröße und 'Mann'
    positiv? Gehen also höhere Werte in Körpergröße `height` einher mit
    einer höheren Wahrscheinlichkeit, dass es sich um einen Mann `m`
    handelt?

    Berechnen Sie ein Bayes-Modell und geben Sie die Punktschätzer der
    Modellkoeffizienten an - einmal für `height` in Inches und einmal in
    Zentimeter.

    Hinweise:

    -   Geben Sie `1` ein für "ja" und `0` für nein.

    -   Gleichen sich Koeffizienten bis einschließlich der 1. Dezimale,
        so gelten sie als "gleich".

    -   Nutzen Sie Standardwerte von `stan_glm()` für Ihr Modell.

    -   Entfernen Sie fehlende Werte wo nötig.

    -   Gehen Sie von unzentrierten Daten aus, soweit nicht anders
        angegeben.

    (a) Handelt es sich bei der Transformation (von Inches in
        Zentimeter) um eine lineare Transformation?

    (b) Ändert sich der Punktschätzer des Achsenabschnitts durch die
        Transformation?

    (c) Ändert sich der Punktschätzer des Regressionsgewichts durch die
        Transformation?

    (d) Bei zentrierten Daten: Ändert sich der Punktschätzer des
        Regressionsgewichts durch die Transformation?

    **\<h4>Lösung\</h4>**\

    ::: Shaded
    ::: Highlighting
    :::
    :::

    Bereiten wir die Daten vor:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    Modell in Inches:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## (Intercept)      height 
        ##      -35.41        0.52

    Modell in Zentimetern:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## (Intercept)   height_cm 
        ##       -35.4         0.2

    Der Achsenabschnitt ändert sich nicht, da `x=0` vor und nach der
    Transformation gleich bleibt: 0 Inches sind 0 Zentimeter.

    Der Regressionskoeffizient ändert sich, da eine Einheit auf der
    X-Achse jetzt nicht mehr ein Inch, sondern ein Zentimeter ist,
    entsprechend ändert sich auch der Wert in der Y-Achse.

    Zentriertes Modell in Inches:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## (Intercept)    height_c 
        ##       -1.10        0.52

    Zentriertes Modell in Zentimetern:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## (Intercept) height_cm_c 
        ##        -1.1         0.2

    Hier (bei zentrierten Prädiktoren) ändert sich der Achsenabschnitt
    *nicht* durch die Transformation, da vor und nach der Transformation
    `x=0` weiterhin `x=0` ist. Der Achsenabschnitt ändert sich.

    (a) Ja; Transformation der Art $y = a + bx$ nennt man *linear*.

    (b) Nein; der Punktschätzer des Achsenabschnitts ändert sich nicht
        durch die Transformation.

    (c) Ja; der der Punktschätzer des Regressionsgewichts ändert sich
        durch die Transformation.

    (d) Ja; Bei zentrierten Daten ändert sich der Punktschätzer des
        Regressionsgewichts durch die Transformation.
        `text sol_a = 1 sol_b <- 0 sol_c <- 1 sol_d <- 1`

5.  **\<h4>Aufgabe\</h4>**\
    Betrachten Sie den Datensatz `mtcars`. Die Forschungsfrage betreffe
    den Einfluss vom Spritverbrauch, $x$, UV, auf die
    Wahrscheinlichkeit, dass es sich um ein Auto mit
    Automatik-Schaltung, $y$, AV, handelt.

    Hinweise:

    -   Runden Sie auf zwei Dezimalstellen.

    -   Berechnen Sie ein lineares Modell auf Basis der Bayes-Statistik.

    -   Orientieren Sie sich am Vorgehen aus dem Unterricht.

    (a) Was ist der Punktschätzer (Median) in Logits für den Prädiktor?

    (b) Was ist der Standardfehler (MAD_SD) in Inv-Logits für den
        Prädiktor?

    (c) Was ist die Wahrscheinlichkeit für `am=1` bei einem Auto mit
        mittlerem Spritverbrauch, $\bar{mpg}$? Berichten Sie den
        Punktschätzer!

    **\<h4>Lösung\</h4>**\

    1.  

    Berechnen wir den Koeffizienten (Punktschätzer) für $\beta$:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## (Intercept)         mpg 
        ##       -6.76        0.31

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ##  mpg 
        ## 0.31

    1.  

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ##  mpg 
        ## 0.53

    1.  

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ##    1 
        ## 0.39

    (a) 0.31

    (b) 0.53

    (c) 0.39

6.  **\<h4>Aufgabe\</h4>**\
    Betrachten Sie den Datensatz `mtcars`. Die Forschungsfrage betreffe
    den Einfluss vom Spritverbrauch, $x$, UV, auf die
    Wahrscheinlichkeit, dass es sich um ein Auto mit
    Automatik-Schaltung, $y$, AV, handelt.

    Hinweise:

    -   Runden Sie auf zwei Dezimalstellen.

    -   Berechnen Sie ein lineares Modell auf Basis der Bayes-Statistik.

    -   Orientieren Sie sich am Vorgehen aus dem Unterricht.

    -   Gehen Sie von einem Modell mit standardisiertem Prädiktor aus.

    (a) Wie groß ist die Ungewissheit (95%-PI) für den Koeffizienten
        $\beta$ in Logits? Geben Sie die Breite an.

    (b) Wie groß ist die Ungewissheit (95%-PI) für $y$ wenn $x=1$, in
        Wahrscheinlichkeit? Geben Sie die Breite an.

    (c) Wie groß ist die Ungewissheit (95%-PI) für den Achsenabschnitt
        $\beta$ in Logits? Geben Sie die Breite an.

    **\<h4>Lösung\</h4>**\

    1.  *Wie groß ist die Ungewissheit (95%-PI) für den Koeffizienten
        $\beta$ in Logits? Geben Sie die Breite an. Geben Sie die Breite
        an.*

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ##       2.5% 97.5%
        ## mpg_z 0.82   3.5

    Berechnen wir die Breite des Intervalls:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## [1] 2.7

    1.  *Wie groß ist die Ungewissheit (95%-PI) für $y$ wenn $x=1$, in
        Wahrscheinlichkeit? Geben Sie die Breite an.*

    Mit `posterior_epred()` bekommt man Stichproben für den erwarteten
    Wert laut Post-Verteilung (für bestimmte Prädiktorwerte) als
    Wahrscheinlichkeit ausgegeben.

    Die Stichproben fassen wir dann anhand der Quantile für 2.5% und
    97.5% zusammen.

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## # A tibble: 2 × 1
        ##    pi95
        ##   <dbl>
        ## 1 0.518
        ## 2 0.964

    Jetzt kennen wir die Intervallgrenzen des 95%-PI. Die Breite
    errechnet sich als Differenz der beiden Werte:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## # A tibble: 1 × 1
        ##   pi95_width
        ##        <dbl>
        ## 1       0.45

    ::: Shaded
    ::: Highlighting
    :::
    :::

    Alternativ könnte man auch mit `posterior_linpred()` arbeiten. Dann
    bekommt man die die Vorhersagen in der Logit-Skala, die man dann zum
    Schluss in Wahrscheinlichkeit umrechnet.

    ::: Shaded
    ::: Highlighting
    :::
    :::

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## 97.5% 
        ##  0.45

    1.  *Wie groß ist die Ungewissheit (95%-PI) für den Achsenabschnitt
        $\beta$ in Logits? Geben Sie die Breite an.*

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## # A tibble: 2 × 1
        ##    pi95
        ##   <dbl>
        ## 1 0.199
        ## 2 0.609

    Jetzt kennen wir die Intervallgrenzen des 95%-PI. Die Breite
    errechnet sich als Differenz der beiden Werte:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## # A tibble: 1 × 1
        ##   pi95_width
        ##        <dbl>
        ## 1       0.41

    ::: Shaded
    ::: Highlighting
    :::
    :::

    (a) 2.71

    (b) 0.45

    (c) 0.41

7.  **\<h4>Aufgabe\</h4>**\
    Betrachten Sie den Datensatz `mtcars`. Die Forschungsfrage betreffe
    den Einfluss vom Spritverbrauch, $x$, UV, auf die
    Wahrscheinlichkeit, dass es sich um ein Auto mit
    Automatik-Schaltung, $y$, AV, handelt.

    Hinweise:

    -   Runden Sie auf zwei Dezimalstellen.

    -   Berechnen Sie ein lineares Modell auf Basis der Bayes-Statistik.

    -   Orientieren Sie sich am Vorgehen aus dem Unterricht.

    *Was ist der größte (statistische) Effekt des Prädiktors (in
    Wahrscheinlichkeit)?*

    **\<h4>Lösung\</h4>**\

    1.  

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## (Intercept)         mpg 
        ##       -6.77        0.32

    Plotten wir das Modell zur Orientierung. Eine einfache Methode zum
    Plotten geht so:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    Im Gegensatz zu einer Geraden ist die Steigung bei einer Kurve wie
    unserer Ogive unterschiedlich in Abhängigkeit vom X-Wert.

    `geom_smooth()` geht hier von einem Logit-Modell mit uniformen
    Prioris aus, was nicht den Standard von `rstan_glm` gleicht. Der
    Hintergrund ist, dass `geom_smooth()` auf Basis der
    Frequentistischen Statistik arbeitet, `rstanarm` hingegen
    Bayesianisch. Bei Frequentistischen Modellen wird - übersetzt man
    sie in Bayes-Modelle - immer eine uniforme Priori-Verteilung
    verwendet.

    Wir könnten diese Aufgabe durch einfaches Abschätzen oder
    Ausprobieren lösen, indem wir die vorhergesagten Änderungen in Y für
    verschiedene Punktepaare $(x_1,x_2)$ berechnen, wobei bei jedem
    Punktepaar der X-Abstand 1 beträgt. Anders gesagt könnten wir die
    Steigung der Ogive an verschiedenen Stellen berechnen.

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## # A tibble: 21 × 2
        ##      mpg   y_diff
        ##    <int>    <dbl>
        ##  1    10 NA      
        ##  2    11  0.00864
        ##  3    12  0.0117 
        ##  4    13  0.0158 
        ##  5    14  0.0211 
        ##  6    15  0.0277 
        ##  7    16  0.0358 
        ##  8    17  0.0452 
        ##  9    18  0.0553 
        ## 10    19  0.0653 
        ## # … with 11 more rows

    Das visualisieren wir mal:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    Wir sehen also, dass der maximale Zuwachs an Prozentpunkten bei ca.
    0.08 liegt, was bei ca `mpg=22` der Fall ist.

    Diesen Wert nehmen wir als Lösung:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## [1] 0.08

    Alternativ könnten wir uns auch folgenden Sachverhalt vor Augen
    führen:

    Die Kurve ist am steilsten in ihrem Zentrum (Wendepunkt); vgl.
    [diese
    Animnation](https://de.wikipedia.org/wiki/Datei:Animated_illustration_of_inflection_point.gif).

    Der Wendepunkt liegt bei $Pr(y=1)=1/2$, also 50%. Damit gilt auch
    $\alpha + \beta x = 0$, denn $\mathcal{L}^{-1}(0)=1/2$.

    An dieser Stelle ist die Steigung der Ogive maximal und beträgt
    $\beta_{\mathcal{L}}/4$ Prozentpunkte, vgl. ROS S. 220 (Kap. 13.2),
    also ein Viertel der Steigung in Logits.

    Die obere Grenze der Steigung in Prozentpunkten liegt also bei
    $\beta/4$, wobei $\beta$ in Logits gemessen ist.

    ::: Shaded
    ::: Highlighting
    :::
    :::

    In unserem Fall:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ##   mpg 
        ## 0.079

    Wir hätten den steilsten Punkt auch so bestimmen können:

    $$\begin{align}
    -6.8 + 0.32x &=0 \\
    0.32x &= 6.8 \\
    x &= 6.8 / 0.32 \approx 21
    \end{align}$$

8.  **\<h4>Aufgabe\</h4>**\
    Betrachten Sie den Datensatz `mtcars`. Die Forschungsfrage betreffe
    den Einfluss vom Spritverbrauch, $x_1$, UV1, sowie von der Zahl der
    Zylinder (als Faktor-Variable), $x_2$, UV2, auf die
    Wahrscheinlichkeit, dass es sich um ein Auto mit
    Automatik-Schaltung, $y$, AV, handelt. Modellieren Sie dabei einen
    Interaktionseffekt.

    Aufgaben:

    1.  Überschneiden sich die Graphen der drei Gruppen?

    2.  Visualisieren Sie das Modell! Einmal mit der Y-Achse skaliert in
        Logits...

    3.  ... einmal mit der Y-Achse skaliert in Wahrscheinlichkeiten.

    Hinweise:

    -   Runden Sie auf zwei Dezimalstellen.

    -   Berechnen Sie ein lineares Modell auf Basis der Bayes-Statistik.

    -   Orientieren Sie sich am Vorgehen aus dem Unterricht.

    **\<h4>Lösung\</h4>**\

    1.  *Überschneiden sich die Graphen der drei Gruppen?*

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## (Intercept)         mpg      cyl_f6      cyl_f8  mpg:cyl_f6  mpg:cyl_f8 
        ##      -7.669       0.347      -1.171       1.346       0.083      -0.068

    Plotten wir das Modell zur Orientierung. Eine einfache Methode zum
    Plotten geht so:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    ![image](media/supplements1/exercise8/unnamed-chunk-3-1.png)

    Dabei ist zu beachten, dass hier ein uniformer Prior (für das
    lineare Modell) verwendet wird.

    Im Gegensatz zu einer Geraden ist die Steigung bei einer Kurve wie
    unserer Ogive unterschiedlich in Abhängigkeit vom X-Wert.

    *Ja*, die Ogiven überschneiden sich.

    Die Visualisierung wird nicht allen Wünschen gerecht, weil die
    Regressionskurve nur entlang des Wertebereichs der Daten gezeigt
    wird.

    1.  *Visualisieren Sie das Modell! Einmal mit der Y-Achse skaliert
        in Logits...*

    Bei b) soll das Modell visualisiert werden, also los.

    Sagen wir, wir wollen y-Werte für Werte von `mpg` von 10 bis 35
    vorhersagen, für alle 3 Gruppen von `cyl`.

    Sagen wir dafür entsprechend die Logit-Werte vorher:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    Alternativ könnten wir direkt die Regressionskoeffizienten nutzen,
    für `geom_abline()`:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    ![image](media/supplements1/exercise8/unnamed-chunk-5-1.png)

    1.  

    ::: Shaded
    ::: Highlighting
    :::
    :::

    Das können wir dann visualisieren:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    ![image](media/supplements1/exercise8/unnamed-chunk-7-1.png)

    1.  *... einmal mit der Y-Achse skaliert in Wahrscheinlichkeiten.*

    Um die Ungewissheit zu visualisieren, müssen wir die Stichproben aus
    der Post-Verteilung visualisieren.

    Dabei hlefen die Pakete `tidybayes` und `modelr`:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    Zuerst erstellen wir ein "Grid" mit den Prädiktorwerten, für die wir
    eine Vorhersage wollen:

    Jetzt fügen wir die Stichproben aus der Post-Verteilung von `m1`
    hinzu, gleich in der Wskt-Skalierung. Das ging doch mit
    `posterior_epred()`...

        ## # A tibble: 300 × 7
        ## # Groups:   mpg, cyl_f, .row [30]
        ##      mpg cyl_f  .row .chain .iteration .draw  .epred
        ##    <dbl> <fct> <int>  <int>      <int> <int>   <dbl>
        ##  1  10.4 4         1     NA         NA     1 0.0590 
        ##  2  10.4 4         1     NA         NA     2 0.0577 
        ##  3  10.4 4         1     NA         NA     3 0.0698 
        ##  4  10.4 4         1     NA         NA     4 0.0544 
        ##  5  10.4 4         1     NA         NA     5 0.280  
        ##  6  10.4 4         1     NA         NA     6 0.00647
        ##  7  10.4 4         1     NA         NA     7 0.368  
        ##  8  10.4 4         1     NA         NA     8 0.00566
        ##  9  10.4 4         1     NA         NA     9 0.00477
        ## 10  10.4 4         1     NA         NA    10 0.378  
        ## # … with 290 more rows

    Für jede der 30 Fälle (`.row`) wurden 4000 Stichproben (`draw`)
    gezogen, in Summe als 120,000.

    Diese Stichproben(-Fülle) können wir uns jetzt komfortabel plotten
    lassen von `tidybayes`:

    ![image](media/supplements1/exercise8/unnamed-chunk-11-1.png)

    Das Diagramm sieht nicht gerade vertrauenserweckend aus... Zu viel
    Ungewissheit in unserem Modell.

9.  **\<h4>Aufgabe\</h4>**\
    Betrachten Sie den Datensatz `mtcars`. Die Forschungsfrage betreffe
    den (statistischen) Einfluss von der Zahl der Zylinder, $x_2$, UV,
    auf die Wahrscheinlichkeit, dass es sich um ein Auto mit
    Automatik-Schaltung, $y$, AV, handelt. Modellieren Sie keinen
    Interaktionseffekt.

    Hinweise:

    -   Runden Sie auf zwei Dezimalstellen.

    -   Berechnen Sie ein lineares Modell auf Basis der Bayes-Statistik.

    -   Orientieren Sie sich am Vorgehen aus dem Unterricht.

    -   Geben Sie `1` ein für "ja" und `0` für nein.

    -   Gleichen sich Koeffizienten bis einschließlich der 1. Dezimale,
        so gelten sie als "gleich".

    -   Nutzen Sie Standardwerte von `stan_glm()` für Ihr Modell.

    -   Entfernen Sie fehlende Werte wo nötig.

    Aufgaben:

    (a) Ist die Wahrscheinlichkeit für ein Automatik-Getriebe höher bei
        `cyl=4` im Vergleich zu `cyl=6`, laut dem Modell? Beziehen Sie
        sich auf die den Punktschätzer der Post-Verteilung.

    (b) Um welchen Wert unterscheidet sich die Wahrscheinlichkeit?

    **\<h4>Lösung\</h4>**\

    1.  

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## (Intercept)         cyl 
        ##        3.96       -0.72

    Der Punktschätzer der Post-Verteilung zeigt uns: Je höher die
    Zylinderzahl, desto geringer der Logit (und damit die
    Wahrscheinlichkeit) für ein manuelles Getriebe bzw. umso höher für
    ein Automatik-Getriebe.

    Also lautet die Antwort: nein.

    ::: Shaded
    ::: Highlighting
    :::
    :::

    1.  

    Ziehen wir Stichproben aus der Post-Verteilung:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## # A tibble: 5 × 3
        ##     `1`   `2` cyl4_rather_manuell
        ##   <dbl> <dbl> <lgl>              
        ## 1 0.670 0.283 TRUE               
        ## 2 0.798 0.536 TRUE               
        ## 3 0.800 0.469 TRUE               
        ## 4 0.570 0.308 TRUE               
        ## 5 0.732 0.421 TRUE

    Wir haben hier geprüft, wie oft `1` \< `2` gilt. Also: wie oft die
    Wahrscheinlichkeit für Manuell-Getriebe (`am=1`) bei `cyl=4` höher
    ist als bei `cyl=6`.

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## # A tibble: 1 × 1
        ##   cyl4_rather_manuell
        ##                 <dbl>
        ## 1                1.00

    Diese Wahrscheinlichkeit ist (praktisch) 1, laut dem Modell.

    ::: Shaded
    ::: Highlighting
    :::
    :::

    (a) Nein, je höher die Zylinderzahl, desto geringer der Logit (und
        damit die Wahrscheinlichkeit) für ein manuelles Getriebe bzw.
        umso höher für ein Automatik-Getriebe.

    (b) 1

10. **\<h4>Aufgabe\</h4>**\
    Eine Studie untersuchte den Arsengehalt `arsenic` in Brunnen in
    Bangladesh. Die Forschis untersuchten u.a., ob die Menschen bereit
    waren, auf einen Brunnen zu wechseln `switch`, der nicht mit Arsen
    belastet war, und welche Rolle die Entfernung (in Einheiten von 100
    Meter, `dist100`) zum nächsten unbelasteten Brunnen spielt.

    Die Daten sind hier zu beziehen:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    Hier ist das Regressionsmodell:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## stan_glm
        ##  family:       binomial [logit]
        ##  formula:      switch ~ dist100 + arsenic
        ##  observations: 3020
        ##  predictors:   3
        ## ------
        ##             Median MAD_SD
        ## (Intercept)  0.00   0.08 
        ## dist100     -0.89   0.10 
        ## arsenic      0.46   0.04 
        ## 
        ## ------
        ## * For help interpreting the printed output see ?print.stanreg
        ## * For info on the priors used see ?prior_summary.stanreg

    1.  Vergleichen Sie zwei Personen mit der gleichen Distanz zum
        nächsten unbelasteten Brunnen, wobei eine Person einen Arsenwert
        von 0.5 hat und die andere Person einen Wert von 1.0.

    Wie groß ist der Unterschied in Wahrscheinlichkeit zwischen erster
    und zweiter Person, den Brunnen zu wechseln (laut dem obigen
    Modell)?

    Beziehen Sie sich auf die Daten der Post-Verteilung.

    1.  Vergleichen Sie zwei Personen mit der gleichen Distanz zum
        nächsten unbelasteten Brunnen, wobei eine Person einen Arsenwert
        von 0.5 hat und die andere Person einen Wert von 1.0.

    Wie groß ist der Unterschied in Wahrscheinlichkeit, dass die zweite
    Person den Brunnen wechselt? Geben Sie einen Punktschätzer auf Basis
    des Mittelwerts der Post-Verteilung an! Beziehen Sie sich auf die
    Daten der PPV.

    (a) Wie groß ist die Wahrscheinlichkeit bei Frage a?

    (b) Wie groß ist die Wahrscheinlichkeit bei Frage b?

    **\<h4>Lösung\</h4>**\

    1.  

    ::: Shaded
    ::: Highlighting
    :::
    :::

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## # A tibble: 2 × 5
        ##   arsenic_level switch_mean switch_q05 switch_q95 switch_sd
        ##   <chr>               <dbl>      <dbl>      <dbl>     <dbl>
        ## 1 1                   0.340      0.309      0.373    0.0194
        ## 2 2                   0.394      0.365      0.423    0.0177

    Die Antwort lautet also:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## [1] 0.05

    0.05.

    Auf dieser Basis könn(t)en wir Punktschätzer plus ihre Ungewissheit
    quantifizieren und visualisieren.

    Mit `posterior_epded()` bekommt man das gleicher Ergebnis wie mit
    `posterior_linpred() %>% invlogit()`.

    Man könnte auch `predict()` nutzen; dann bekommt man den
    Punktschätzer (auf Basis des Medians) aber ohne Angaben der
    Ungewissheit der Schätzung. Daher ist `predict()` nicht so nützlich.

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ##    1    2 
        ## 0.34 0.39

    Der Unterschied beträgt ca. 0.05.

    `predict()` gibt uns den \*Punktschätzer', $\hat{a} + \hat{b}x$. Da
    wir nur den Punktschätzer bekommen, fehlt uns die Einschätzung der
    Ungewissheit der Koeffizienten.

    Vgl. ROS, S. 92, Kap. 9.2.

    1.  Berechnen wir die PPV:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    `posterior_predict` zieht Werte aus der PPV.

    Was ist die Wahrscheinlichkeit für `switch` in jeder Gruppe?

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## # A tibble: 1 × 3
        ##   wechsler_gruppe_a wechsler_gruppe_b   diff
        ##               <dbl>             <dbl>  <dbl>
        ## 1             0.335             0.395 0.0603

    Die Differenz der beiden Werte gibt uns einen Schätzwert für den
    Unterschied in der Wahrscheinlichkeit in den beiden Gruppen
    hinsichtlich des Wechselns des Brunnens.

    Die Antwort für b) lautet also:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## [1] 0.06

    (a) Der Wert beträgt 0.05.

    (b) Der Wert beträgt 0.06.

11. **\<h4>Aufgabe\</h4>**\
    Eine Studie untersuchte den Arsengehalt `arsenic` in Brunnen in
    Bangladesh. Die Forschis untersuchten u.a., ob die Menschen bereit
    waren, auf einen Brunnen zu wechseln `switch`, der nicht mit Arsen
    belastet war, und welche Rolle die Entfernung (in Einheiten von 100
    Meter, `dist100`) zum nächsten unbelasteten Brunnen spielt.

    Die Daten sind hier zu beziehen:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    Hier ist ein Regressionsmodell mit Interaktionseffekt:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## stan_glm
        ##  family:       binomial [logit]
        ##  formula:      switch ~ dist100 + arsenic + dist100:arsenic
        ##  observations: 3020
        ##  predictors:   4
        ## ------
        ##                 Median MAD_SD
        ## (Intercept)     -0.15   0.12 
        ## dist100         -0.57   0.21 
        ## arsenic          0.56   0.07 
        ## dist100:arsenic -0.18   0.10 
        ## 
        ## ------
        ## * For help interpreting the printed output see ?print.stanreg
        ## * For info on the priors used see ?prior_summary.stanreg

    Und hier das Modell mit gleichen Prädiktoren, aber zentrierten
    Prädiktoren:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## stan_glm
        ##  family:       binomial [logit]
        ##  formula:      switch ~ dist100_c + arsenic_c + dist100_c:arsenic_c
        ##  observations: 3020
        ##  predictors:   4
        ## ------
        ##                     Median MAD_SD
        ## (Intercept)          0.35   0.04 
        ## dist100_c           -0.88   0.10 
        ## arsenic_c            0.47   0.04 
        ## dist100_c:arsenic_c -0.18   0.11 
        ## 
        ## ------
        ## * For help interpreting the printed output see ?print.stanreg
        ## * For info on the priors used see ?prior_summary.stanreg

    Warum hat das *nicht* zentrierte Modell größere Standardfehler
    (MAD_sd)?

    **\<h4>Lösung\</h4>**\
    Der Hauptgrund ist, dass im Modell `m2`, dem Modell mit
    unzentrierten Prädiktoren, eine hohe Korrelation zwischen einfachen
    Prädiktoren und dem Interaktionsterm vorliegt. Hohe Korrelation
    zwischen den Prädiktoren erhöht die Standardfehler. Warum ist das
    so? Sind zwei Prädiktoren hoch korreliert, was ist dann der
    Mehrwert, den zweiten Prädiktor zu kennen, wenn man den ersten
    kennt? Gering, vermutlich! Denn der zweite birgt ja redundante
    Information im Vergleich zum ersten. Aber das Modell könnte auch
    denken, dass der zweite Prädiktor wichtig und der erste redundant
    ist. Kurz gesagt: Das Modell ist verwirrt. Das schlägt sich in
    höheren Standardfehlern nieder. Durch das Zentrieren wird die
    Korrelation zwischen den einfachen Prädiktoren und dem
    Interaktionsterm aufgelöst bzw. zumindest deutlich verringert.

    Zur Verdeutlichung: Die Korrelation zwischen einfachen Prädiktoren
    und Interaktionsterm:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## # A tibble: 4 × 5
        ##   term            dist100   switch arsenic dist100xarsenic
        ##   <chr>             <dbl>    <dbl>   <dbl>           <dbl>
        ## 1 dist100          NA     -0.118     0.178         0.772  
        ## 2 switch           -0.118 NA         0.184         0.00758
        ## 3 arsenic           0.178  0.184    NA             0.635  
        ## 4 dist100xarsenic   0.772  0.00758   0.635        NA

    Wie man sieht, ist die Korrelation hoch.

    Jetzt zum Vergleich die zentrierten Daten:

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## # A tibble: 4 × 5
        ##   term                dist100_c  switch arsenic_c dist100_cxarsenic_c
        ##   <chr>                   <dbl>   <dbl>     <dbl>               <dbl>
        ## 1 dist100_c              NA     -0.118     0.178               0.185 
        ## 2 switch                 -0.118 NA         0.184              -0.0373
        ## 3 arsenic_c               0.178  0.184    NA                   0.0394
        ## 4 dist100_cxarsenic_c     0.185 -0.0373    0.0394             NA

    Dieses Phänomen bezeichnet man auch *Kollinearität*.

    Weitere Erklärung findet sich bei McElreath 2020, Kap. 6 oder z.B.
    [hier](https://www.theanalysisfactor.com/centering-for-multicollinearity-between-main-effects-and-interaction-terms/).

    Ein ergänzender Blick auf die Korrelationen der Prädiktoren:

    Korrelationen der Koeffizienten für `m2`:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    ![image](media/supplements1/exercise11/unnamed-chunk-8-1.png)

    Korrelationen der Koeffizienten für `m3`:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    Ein zweiter, weniger wichtiger Grund für die Reduktion der
    Standardfehler ist der Folgende.

    Liegt der Achsenabschnitt (Intercept, Konstante des Modells) am
    *Rand* der Daten, so ist seine Ungewissheit größer, als wenn er in
    der Mitte der Daten liegt:

    ::: Shaded
    ::: Highlighting
    :::
    :::

    ![image](media/supplements1/exercise11/unnamed-chunk-10-1.png)![image](media/supplements1/exercise11/unnamed-chunk-10-2.png)

    Der Effekt ist allerdings nicht groß.

    Auch für ein generalisiertes lineares Modell (wie die logistische
    Regression) gilt dieser Grundsatz: An den Rändern der Daten
    (minimales bzw. maximale Prädiktorwerte) sind die Schätzungen
    ungenauer als im Zentrum.

    ::: Shaded
    ::: Highlighting
    :::
    :::

    ![image](media/supplements1/exercise11/unnamed-chunk-11-1.png)

    Vergleichen wir dazu die Standardfehler in einem Modell ohne
    Interaktion, `m4`. Wir lassen die Interaktion weg, um zu prüfen, ob
    es Effekte auf die Standardfehler gibt, die unabhängig von der
    Interaktion (bzw. der dadurch erzeugten Kollinearität) sind.

    ::: Shaded
    ::: Highlighting
    :::
    :::

    Vergleichen wir die Standardfehler der Modelle. Zur Erinnerung: Der
    Standardfehler ist eine Möglichkeit, die Ungewissheit des Modells zu
    quantifizieren.

    Standardfehler im *nicht*-zentrierten Modell (ohne Interaktion):

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## (Intercept)     dist100     arsenic 
        ##       0.082       0.102       0.042

    Standardfehler im zentrierten Modell (ohne Interaktion):

    ::: Shaded
    ::: Highlighting
    :::
    :::

        ## (Intercept)   dist100_c   arsenic_c 
        ##       0.040       0.104       0.042

    Wie wir sehen, wirkt sich die Zentrierung nur (günstig) auf den
    Achsenabschnitt aus, aber nicht auf den Standardfehler des
    Regressionskoeffizienten.
