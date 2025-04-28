murielle
murielblonde
En ligne

adriana — 10:32
Transféré
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur1">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur2">
    <p>Saisir la valeur A : <input type="text" id="inputValeur" name="valeurA">
    <p>Saisir la valeur B : <input type="text" id="inputValeur" name="valeurB">
    <p>Saisir la valeur C : <input type="text" id="inputValeur" name="valeurC">
    <p>Saisir un nombre pour vérifier s'il est pair ou impair : <input type="text" id="inputValeur" name="valeurPairImpair">
    <p><input type="submit" value="Afficher">
</form>

<%-- Récupération des valeurs --%>
<% String valeur1 = request.getParameter("valeur1"); %>
<% String valeur2 = request.getParameter("valeur2"); %>
<% String valeurA = request.getParameter("valeurA"); %>
<% String valeurB = request.getParameter("valeurB"); %>
<% String valeurC = request.getParameter("valeurC"); %>
<% String valeurPairImpair = request.getParameter("valeurPairImpair"); %>

<%-- Vérification de la condition entre les deux valeurs --%>
<% if (valeur1 != null && valeur2 != null) { %>
    <%-- Conversion des valeurs en entiers pour la comparaison --%>
    <% int intValeur1 = Integer.parseInt(valeur1); %>
    <% int intValeur2 = Integer.parseInt(valeur2); %>
    
    <%-- Condition if pour comparer les valeurs --%>
    <% if (intValeur1 > intValeur2) { %>
        <p>Valeur 1 est supérieure à Valeur 2.</p>
    <% } else if (intValeur1 < intValeur2) { %>
        <p>Valeur 1 est inférieure à Valeur 2.</p>
    <% } else { %>
        <p>Valeur 1 est égale à Valeur 2.</p>
    <% } %>
<% } %>

<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>
Exemple :</br>
A = 10</br>
B = 20</br>
C = 15</br>
Oui C est compris entre A et B</p>

<%-- Vérification si C est compris entre A et B --%>
<% if (valeurA != null && valeurB != null && valeurC != null) { %>
    <%-- Conversion des valeurs en entiers pour la comparaison --%>
    <% int intValeurA = Integer.parseInt(valeurA); %>
    <% int intValeurB = Integer.parseInt(valeurB); %>
    <% int intValeurC = Integer.parseInt(valeurC); %>
    
    <%-- Condition if pour vérifier si C est compris entre A et B --%>
    <% if (intValeurC >= intValeurA && intValeurC <= intValeurB) { %>
        <p>Oui, C est compris entre A et B.</p>
    <% } else { %>
        <p>Non, C n'est pas compris entre A et B.</p>
    <% } %>
<% } %>

<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>

<%-- Vérification si le nombre est pair ou impair --%>
<% if (valeurPairImpair != null) { %>
    <%-- Conversion de la valeur en entier pour la comparaison --%>
    <% int intValeurPairImpair = Integer.parseInt(valeurPairImpair); %>
    
    <%-- Condition if pour vérifier si le nombre est pair ou impair --%>
    <% if (intValeurPairImpair % 2 == 0) { %>
        <p>Le nombre <%= intValeurPairImpair %> est pair.</p>
    <% } else { %>
        <p>Le nombre <%= intValeurPairImpair %> est impair.</p>
    <% } %>
<% } %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
Réduire
message.txt
4 Ko
adriana — 10:45
Transféré
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
</head>
<body bgcolor=white>
Afficher plus
message.txt
5 Ko
Transféré
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaines</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les chaines de caractères</h1>
<form action="#" method="post">
    <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>

<%-- Récupération des valeurs --%>
<% String chaine = request.getParameter("chaine"); %>

<% if (chaine != null && chaine.length() >= 6) { %>

    <%-- Obtention de la longueur de la chaîne --%>
    <% int longueurChaine = chaine.length(); %>
    <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères</p>

    <%-- Extraction du 3° caractère dans votre chaine --%>
    <% char caractereExtrait = chaine.charAt(2); %>
    <p>Le 3° caractère de votre chaine est la lettre <%= caractereExtrait %></p>

    <%-- Obtention d'une sous-chaîne --%>
    <% String sousChaine = chaine.substring(2, 6); %>
    <p>Une sous chaine de votre texte : <%= sousChaine %></p>

    <%-- Recherche de la lettre "e" --%>
    <% char recherche = 'e'; 
       int position = chaine.indexOf(recherche); %>
    <p>Votre premier "e" est en : <%= position %></p>

<h2>Exercice 1 : Combien de 'e' dans notre chaine de caractères ?</h2>
<p>Ecrire un programme pour compter le nombre de lettre e dans votre chaine de caractères</p>

<%-- Compter le nombre de 'e' dans la chaîne --%>
<% int countE = 0;
   for (int i = 0; i < chaine.length(); i++) {
       if (chaine.charAt(i) == 'e') {
           countE++;
       }
   } %>
<p>Le nombre de 'e' dans votre chaîne est : <%= countE %></p>

<h2>Exercice 2 : Affichage verticale</h2>
<p>Ecrire le programme pour afficher le texte en vertical</br>
Exemple : Bonjour</br>
B</br>
o</br>
n</br>
j</br>
o</br>
u</br>
r</p>

<%-- Afficher le texte en vertical --%>
<% for (int i = 0; i < chaine.length(); i++) { %>
    <p><%= chaine.charAt(i) %></p>
<% } %>

<h2>Exercice 3 : Retour à la ligne</h2>
<p>La présence d'un espace provoque un retour à la ligne </br>
Exemple : L'hiver sera pluvieux</br>
L'hiver</br>
sera</br>
pluvieux</p>

<%-- Retour à la ligne à chaque espace --%>
<% String[] mots = chaine.split(" "); %>
<% for (String mot : mots) { %>
    <p><%= mot %></p>
<% } %>

<h2>Exercice 4 : Afficher une lettre sur deux</h2>
<p>Ecrire le programme pour afficher seulement une lettre sur deux de votre texte </br>
Exemple : L'hiver sera pluvieux</br>
Lhvrsr lvex</p>

<%-- Afficher une lettre sur deux --%>
<% StringBuilder sb = new StringBuilder();
   for (int i = 0; i < chaine.length(); i += 2) {
       sb.append(chaine.charAt(i));
   } %>
<p>Une lettre sur deux : <%= sb.toString() %></p>

<h2>Exercice 5 : La phrase en verlant</h2>
<p>Ecrire le programme afin d'afficher le texte en verlant </br>
Exemple : L'hiver sera pluvieux</br>
xueivulp ares revih'l</p>

<%-- Afficher le texte en verlant --%>
<% StringBuilder sbVerlant = new StringBuilder(chaine);
   sbVerlant.reverse(); %>
<p>Le texte en verlant : <%= sbVerlant.toString() %></p>

<h2>Exercice 6 : Consonnes et voyelles</h2>
<p>Ecrire le programme afin de compter les consonnes et les voyelles dans votre texte</p>

... (21lignes restantes)
Réduire
message.txt
4 Ko
﻿
adriana
adriana02014
