---
title: "Bayes:Start"
subtitle: "Eine Einführung in die Bayes-Statistik"
author: "Sebastian Sauer"
date: "Letzte Aktualisierung: 2022-07-07 22:26:06"




site: bookdown::bookdown_site
# output: bookdown::gitbook
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
description: "Ein Kurs zu den Grundlagen der Inferenzstatistik auf Basis der Bayes-Methode"
---










# Zu diesem Buch {-}




<img src="img/Golem_hex.png" width="30%" style="display: block; margin: auto;" />


 
<p style="font-size:9pt; text-align:center">
    Bildquelle: Klara Schaumann, Lizenz: CC-BY
</p>






## tl;dr


*Bayes-Start* ist ein frei verfügbarer Einführungskurs in die Bayes-Statistik.
Ziel ist, die grundlegende Logik von Bayes-Inferenz zu vermitteln und zu zeigen, 
wie man mit linearen Modellen viele typische Forschungsfragen beantworten kann.
Ein wichtiger Baustein betrifft kausale Überlegungen,
also die Frage, wie man kausale Forschungsfragen statistisch umsetzt und beurteilt.
Als Software wird R verwendet @RCoreTeam2015
; für Bayes-Modellierung wird das R-Paket `rstanarm` verwendet @goodrich_rstanarm_2020
Inhaltlich wird zum Teil auf Richard McElreath's hervorragenden Lehrbuch,
*Statistical Rethinking* aufgebaut  @mcelreath_statistical_2020.
Außerdem stellt Gelman's et al. neues,
ebenfalls sehr gutes Lehrbuch *Regression and other Stories*  @gelman_regression_2021
eine Grundlage für die Inhalte dieses Kurses dar.
Beide Bücher sind als Lektüre zu empfehlen.





## Hinweise

- Dieser Kurs ist lizensiert unter der [MIT Lizenz](https://github.com/sebastiansauer/bayes-start/blob/main/LICENSE). Das ist eine permissive Lizenz, die erlaubt, dass Sie diesen Kurs frei verwenden können. Sie haben (nur) die Verpflichtung, zu zitieren und auf die Lizenzart hinzuweisen.

- [Installation von R und seinen Freunden ](https://data-se.netlify.app/2021/11/30/installation-von-r-und-seiner-freunde/)

- [Installation der Software für Bayes-Analysen](https://data-se.netlify.app/2022/01/28/bayes-software-installieren-f%C3%BCr-r/)


- [Übergreifende Lernziele](https://sebastiansauer.github.io/bayes-start/Lernziele.html#übergreifende-lernziele)


- Mitarbeit oder Verbesserungsvorschläge: am besten als [Github Issue](https://github.com/sebastiansauer/bayes-start/issues) einstellen.

- Der Quellcode zu den Folien findet sich [hier](https://github.com/sebastiansauer/QM2-Folien).








## Kudos

Beim Schreiben dieses Kurses habe ich auf der Vorarbeit vieler Menschen aufgebaut.
Viele Menschen haben mich unterstützt, großzügig und auf verschiedene Weise.

Einige möchte ich herausgreifen, um Danke zu sagen:

- Kollegis wie Karsten Lübke, von denen ich viel gelernt habe.
- Richard McElreath für sein inspirierendes Lehrbuch.
- Alle Open-Source-Entwickler, die Projekte wie dieses überhaupt erst möglichen machen. 💌

