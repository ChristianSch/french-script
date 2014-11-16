#lang pollen

◊(define dodger-blue "#1e90ff")
◊(define light-grey "#ccc")

body {
	font-family: 'Rosario', sans-serif;
	font-size: 18px;
	margin: 0;
	padding-top: 70px; /* sticky header */
}

a, a:link, a:visited {
	color: ◊dodger-blue;
	text-decoration: none;
}

a:hover, a:focus {
	text-decoration: underline;;
}

h1 {
	text-align: center;
}

/* remove top margin/padding */
h1 + p,
h2 + p,
h3 + p, 
h4 + p,
h5 + p,
h6 + p,
aside + p {
	margin-top: 0;
	padding-top: 0;
}

/* navigation */
header {
	display: block;
	border-bottom: 2px solid #ccc;
	margin: 0;
	padding: 0.8em;
	clear: both;
	display: block;
	position: fixed;
	top: 0;
	right: 0;
	left: 0;
	background: white;
}

header .nav {
	max-width: 800px;
	margin: 0 auto;
}

header .nav .nav-prev {
	display: inline;
	float: left;
}

header .nav .nav-next {
	display: inline-block;
	float: right;
}

.content {
	max-width: 760px;
	margin: 0 auto;
}

.ipa {
	/* phonetics need a seperate font */
	font-family: 'Lucida Sans Unicode', 'Lucida Grande';
	letter-spacing: 0.02em;
}

.translation {
	color: #999;
	margin-left: 0.5em;
	margin-right: 0.5em;
	font-style: italic;
}

h1 .translation,
h2 .translation,
h3 .translation,
h4 .translation,
h6 .translation,
h7 .translation,
li .translation {
	margin-left: 0;
	margin-right: 0;
}

h1.sub,
h2.sub,
h3.sub,
h4.sub,
h5.sub,
h6.sub {
	font-size: 1.2em;
	text-align: center;
}

.side-note {
	overflow: visible;
	height: 0;
	margin-left: -120px;
	max-width: 80px;
	padding-right: 40px;
	text-align: right;
	font-size: 0.8em;
}

.box {
	background: #eee;
	border: #ddd;
	padding: 10px 50px 50px 50px;
	margin-top: 50px;
	margin-bottom: 50px;
}

.box h2,
.box h3,
.box h4,
.box h5,
.box h6 {
	text-align: center;
}

hr {
	height: 1px;
	background-color: ◊light-grey;
	outline: none;
	box-shadow: none;
	border: none;
}

.excercise-number {
	text-align: center;
	display: block;
	border-radius: 50%;
	border: 1px solid ◊light-grey;
	width: 36px;
    height: 36px;
    padding: 4px;
    font-size: 1.4em;
    margin-left: -100px;
    float: left;
	transition: background ease-in-out 0.2s;
	-webkit-transition: background ease-in-out 0.2s;
}

.excercise-number:hover {
	background: ◊light-grey;
}

.clearfix:after {
	content: ".";
    clear: both;
    display: block;
    visibility: hidden;
    height: 0px;
}

.two-col {
	 -webkit-column-count: 2; /* Chrome, Safari, Opera */
    -moz-column-count: 2; /* Firefox */
    column-count: 2;
}

.two-col ul {
	margin-top: 0;
}