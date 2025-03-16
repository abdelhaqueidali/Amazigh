<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Sections</title>
    <!-- Google Fonts - Noto Sans Tifinagh -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+Tifinagh&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Emoji:wght@300..700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <style>
        /*  Additional styles for index.html (can be moved to style.css later) */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
            color: #333;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Container for the entire page content */
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            flex: 1;
        }

        /* Header Styles */
        header {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 0;
            text-align: center;
            border-radius: 8px 8px 0 0;
        }

        header h1 {
            margin: 0;
            font-size: 2.5em;
        }

        /* Navigation Menu Styles */
        .nav-toggle {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #333;
            color: #fff;
            text-align: center;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .nav-boxes {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); /* Responsive columns */
            gap: 20px;
            margin-top: 30px;
        }

        .nav-box {
            background-color: #f0f8f1; /* Light green */
            border: 2px solid #4CAF50;
            border-radius: 8px;
            padding: 20px;
            text-align: center;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
            text-decoration: none; /* Remove underline from links */
            color: #333; /* Default text color */
            display: block; /* Make the entire box clickable */
        }

        .nav-box:hover {
            background-color: #c8e6c9; /* Darker green on hover */
            transform: scale(1.05); /* Slightly enlarge */
        }

        .nav-box h2 {
            font-size: 1.8em;
            margin-bottom: 10px;
            color: #4CAF50; /* Green heading */
        }
        .nav-box .tifinagh {
            font-size: 2em;
            margin-bottom: 10px;
        }

        .nav-box p {
            font-size: 1em;
            line-height: 1.4;
        }

        /* Footer Styles */
        footer {
            text-align: center;
            padding: 10px;
            background-color: #333;
            color: #fff;
            border-radius: 0 0 8px 8px;
        }

        .icon-wrapper {
            font-size: 3em;
            margin-bottom: 10px;
            font-family: 'Noto Emoji', sans-serif;
            color: #4CAF50;
        }

        /* Collapsible Section Styles */
        .collapsible-section {
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            overflow: hidden; /* Ensure content doesn't bleed out of rounded corners */
        }

        .collapsible-header {
            background-color: #f0f8f1;
            color: #333;
            padding: 15px 20px;
            cursor: pointer;
            border-bottom: 1px solid #ccc;
            text-align: left;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .collapsible-header h2 {
            margin: 0;
            font-size: 1.5em;
            color: #4CAF50;
        }

        .collapsible-content {
            padding: 15px 20px;
            display: none; /* Initially hidden */
            background-color: #fff;
        }

        .collapsible-content.show {
            display: block; /* Show when 'show' class is added */
        }

        .collapsible-toggle {
            font-size: 1.2em;
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>All Sections</h1>
        </header>
        <a href="index.html">
            <button class="nav-toggle">ⴰⵙⵏⵓⴱⴳ - Home</button>
        </a>
        <main>

            <!-- Index Section -->
            <div class="collapsible-section">
                <div class="collapsible-header" onclick="toggleSection('index-section')">
                    <h2>ⴰⵏⵙⵓⴼ ⵙⵉⵡⵏ! - Home Page</h2>
                    <span class="collapsible-toggle" id="index-section-toggle">+</span>
                </div>
                <div class="collapsible-content" id="index-section">
                    <div class="nav-boxes">
                        <a href="learn.html" class="nav-box">
                            <span class="icon-wrapper">🔠</span>
                            <h2 class="tifinagh">ⵍⵎⴷ</h2>
                            <p>ⵍⵎⴷ ⵜⴰⵎⴰⵣⵉⵖⵜ</p>
                        </a>

                        <a href="dictionary.html" class="nav-box">
                            <span class="icon-wrapper">📚</span>
                            <h2 class="tifinagh">ⴰⵎⴰⵡⴰⵍ</h2>
                            <p>ⵙⵉⴳⴳⵍ ⴳ ⵓⵎⴰⵡⴰⵍ ⴰⵎⴰⵣⵉⵖ ⵙ ⵎⵏⵏⴰⵡⵜ ⵜⵓⵜⵍⴰⵢⵉⵏ</p>
                        </a>

                        <a href="verbs.html" class="nav-box">
                            <span class="icon-wrapper" style="color:red;">🏃‍♂️</span>
                            <h2 class="tifinagh">ⴰⵎⵙⴼⵜⵉ</h2>
                            <p>ⵔⵣⵣⵓ ⵙ ⵓⵙⴼⵜⵉ ⵏ ⵓⵎⵢⴰⴳ ⵙ ⵜⵎⴰⵣⵉⵖⵜ ⴷ ⵜⵓⵜⵍⴰⵢⵉⵏ ⵏⵏⵉⴹⵏ</p>
                        </a>

                        <a href="https://abdelhaqueidali.github.io/Amazigh-Quran-Translation/v2/webpagev2.html" class="nav-box">
                            <span class="icon-wrapper" style="color:red;">📖</span>
                            <h2 class="tifinagh">ⵍⵇⵓⵔⴰⵏ</h2>
                            <p>ⵖⵔ ⴷ ⵔⵎⵙ ⵍⵇⵓⵔⴰⵏ ⵙ ⵜⵎⴰⵣⵉⵖⵜ</p>
                        </a>

                        <a href="tools.html" class="nav-box">
                            <span class="icon-wrapper">🛠️</span>
                            <h2 class="tifinagh">ⵉⵎⴰⵙⵙⵏ</h2>
                            <p>ⵔⵣⵣⵓ ⵙ ⵓⵙⴼⵜⵉ ⵏ ⵓⵎⵢⴰⴳ ⵙ ⵜⵎⴰⵣⵉⵖⵜ ⴷ ⵜⵓⵜⵍⴰⵢⵉⵏ ⵏⵏⵉⴹⵏ</p>
                        </a>

                        <a href="questions.html" class="nav-box">
                            <span class="icon-wrapper" style="color:red;">❓</span>
                            <h2 class="tifinagh">ⴰⵙⵇⵙⵉ ⴷ ⵜⵎⵔⴰⵔⵓⵜ</h2>
                            <p>ⵉⵙⵇⵙⵉⵜⵏ ⵖⴼ ⵜⵎⴰⵣⵉⵖⵜ ⴷ ⵜⵎⵔⴰⵔⵓⵜⵉⵏ ⵖⵉⴼⵙⵏⵜ</p>
                        </a>

                        <a href="watch.html" class="nav-box">
                            <span class="icon-wrapper" style="color:yellow;">▶️</span>
                            <h2 class="tifinagh">ⵉⵙⵓⵔⴰ</h2>
                            <p>ⵥⵕ ⵉⵙⵓⵔⴰ ⵙ ⵜⵎⴰⵣⵉⵖⵜ</p>
                        </a>

                        <a href="" class="nav-box">
                            <span class="icon-wrapper" style="color:red;">⛔</span>
                            <h2 class="tifinagh">ⴳ ⵎⴰⴷ ⵏⵏ ⵓⵔ ⵢⴰⴳⴳⵓⴳⵏ</h2>
                            <p></p>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Watch Section -->
            <div class="collapsible-section">
                <div class="collapsible-header" onclick="toggleSection('watch-section')">
                    <h2>ⵉⵙⵓⵔⴰ - Watch</h2>
                    <span class="collapsible-toggle" id="watch-section-toggle">+</span>
                </div>
                <div class="collapsible-content" id="watch-section">
                    <div class="nav-boxes">
                        <a href="https://arikplus.wixsite.com/" class="nav-box">
                            <span class="icon-wrapper">ⴰⵔⵉⴽ+</span>
                            <h2 class="tifinagh">ⵓⵏⵓⵖⵏ ⵉⵏⵎⵎⴰⵙⵙⵓⵜⵏ</h2>
                            <p>ⵉⵙⵓⵔⴰ ⵏ ⵡⵓⵏⵓⵖⵏ ⵙ ⵜⵎⴰⵣⵉⵖⵜ ⵜⴰⵏⵥⵓⵍⴰⵏⵜ</p>
                        </a>

                        <a href="https://isura.tv/" class="nav-box">
                            <span class="icon-wrapper">ⵉⵙⵓⵔⴰ ⵜ.ⴼ</span>
                            <h2 class="tifinagh">Isura tv</h2>
                            <p>ⵉⵙⵓⵔⴰ ⵙ ⵜⵎⴰⵣⵉⵖⵜ ⵏ ⵉⵇⴱⴰⵢⵍⵉⵢⵏ</p>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Tools Section -->
            <div class="collapsible-section">
                <div class="collapsible-header" onclick="toggleSection('tools-section')">
                    <h2>ⵉⵎⴰⵙⵙⵏ - Tools</h2>
                    <span class="collapsible-toggle" id="tools-section-toggle">+</span>
                </div>
                <div class="collapsible-content" id="tools-section">
                    <div class="nav-boxes">
                        <a href="https://abdelhaqueidali.github.io/Amazigh-Scripts-Converter/" class="nav-box">
                            <span class="icon-wrapper">Z⇄ⵣ 1</span>
                            <h2 class="tifinagh">ⴰⵎⵙⵏⴼⵍ ⵏ ⵢⵉⵙⴽⴽⵉⵍⵏ</h2>
                            <p>ⵙⵏⴼⵍ ⴳⵔ ⵓⵙⴽⴽⵉⵍ ⴰⵎⴰⵣⵉⵖ ⴷ ⵓⵍⴰⵜⵉⵏ</p>
                        </a>

                        <a href="https://abdelhaqueidali.github.io/Amazigh-Scripts-Converter/Advance.html" class="nav-box">
                            <span class="icon-wrapper">Z⇄ⵣ 2</span>
                            <h2 class="tifinagh">ⴰⵎⵙⵏⴼⵍ ⵏ ⵢⵉⵙⴽⴽⵉⵍⵏ</h2>
                            <p>ⵙⵏⴼⵍ ⴰⵍⴰⵜⵉⵏ ⵏ Tawalt, ⴷ Ircam</p>
                        </a>

                        <a href="https://abdelhaqueidali.github.io/Numbers-To-Amazigh-Words/" class="nav-box">
                            <span class="icon-wrapper">1️→ⵢⴰⵏ</span>
                            <h2 class="tifinagh">ⴰⵎⵙⵏⴼⵍ ⵏ ⵡⵓⵟⵟⵓⵏⵏ</h2>
                            <p>ⵙⵏⴼⵍ ⵓⵟⵟⵓⵏⵏ ⵖⵔ ⵜⴳⵓⵔⵉⵡⵉⵏ</p>
                        </a>

                        <a href="https://abdelhaqueidali.github.io/Amazigh-Conjugator/" class="nav-box">
                            <span class="icon-wrapper">ⵙⴼⵜⵉ</span>
                            <h2 class="tifinagh">ⴰⵎⵙⴼⵜⵉ ⴰⵡⵓⵔⵎⴰⵏ</h2>
                            <p>ⴰⵎⵙⴼⵜⵉ ⴰⵡⵓⵔⵎⴰⵏ ⵏ ⵓⵎⵢⴰⴳ</p>
                        </a>

                        <a href="https://abdelhaqueidali.github.io/Amazigh-Spell-Checker/" class="nav-box">
                            <span class="icon-wrapper">ⴰⴼⴰⵣⴳⵍ</span>
                            <h2 class="tifinagh">ⴰⴼ ⵉⵣⴳⴰⵍⵏ</h2>
                            <p>ⴷⴰ ⵉⵎⵎⴰⵍ ⵉⵣⴳⴰⵍⵏ ⴳ ⵓⴹⵕⵉⵚ ⴼⴰⴷ ⴰⴷ ⵜⵏ ⵜⵙⵏⵎⴷ</p>
                            </p>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Verbs Section -->
            <div class="collapsible-section">
                <div class="collapsible-header" onclick="toggleSection('verbs-section')">
                    <h2>ⴰⵎⵙⴼⵜⵉ - Verbs</h2>
                    <span class="collapsible-toggle" id="verbs-section-toggle">+</span>
                </div>
                <div class="collapsible-content" id="verbs-section">
                    <div class="nav-boxes">
                        <a href="verbs.html" class="nav-box">
                            <span class="icon-wrapper" style="color:red;">🏃‍♂️</span>
                            <h2 class="tifinagh">ⴰⵎⵙⴼⵜⵉ</h2>
                            <p>Conjugate verbs in all verb modes</p>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Questions Section -->
            <div class="collapsible-section">
                <div class="collapsible-header" onclick="toggleSection('questions-section')">
                    <h2>ⵉⵙⵇⵙⵉⵜⵏ - Questions</h2>
                    <span class="collapsible-toggle" id="questions-section-toggle">+</span>
                </div>
                <div class="collapsible-content" id="questions-section">
                    <div class="nav-boxes">
                        <a href="questions.html" class="nav-box">
                            <span class="icon-wrapper" style="color:red;">❓</span>
                            <h2 class="tifinagh">ⴰⵙⵇⵙⵉ ⴷ ⵜⵎⵔⴰⵔⵓⵜ</h2>
                            <p>ⵉⵙⵇⵙⵉⵜⵏ ⵖⴼ ⵜⵎⴰⵣⵉⵖⵜ ⴷ ⵜⵎⵔⴰⵔⵓⵜⵉⵏ ⵖⵉⴼⵙⵏⵜ</p>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Learn Section -->
            <div class="collapsible-section">
                <div class="collapsible-header" onclick="toggleSection('learn-section')">
                    <h2>ⵍⵎⴷ - Learn</h2>
                    <span class="collapsible-toggle" id="learn-section-toggle">+</span>
                </div>
                <div class="collapsible-content" id="learn-section">
                    <div class="nav-boxes">
                        <a href="learn_tifinagh.html" class="nav-box">
                            <span class="icon-wrapper">🔠</span>
                            <h2 class="tifinagh">ⵜⵉⴼⵉⵏⴰⵖ</h2>
                            <p>ⵍⵎⴷ ⴰⴳⵯⵎⵎⴰⵢ ⴰⵎⴰⵣⵉⵖ</p>
                        </a>

                        <a href="learn_number.html" class="nav-box">
                            <span class="icon-wrapper">🔢</span>
                            <h2 class="tifinagh">ⵓⵟⵟⵓⵏⵏ</h2>
                            <p>ⵍⵎⴷ ⵓⵟⵟⵓⵏⵏ ⵙ ⵜⵎⴰⵣⵉⵖⵜ</p>
                        </a>

                        <a href="learn_color.html" class="nav-box">
                            <span class="icon-wrapper">🟩</span>
                            <h2 class="tifinagh">ⵉⴽⵯⵍⴰⵏ</h2>
                            <p>ⵍⵎⴷ ⵉⴽⵯⵍⴰⵏ ⵙ ⵜⵎⴰⵣⵉⵖⵜ</p>
                        </a>

                        <a href="read_story.html" class="nav-box">
                            <span class="icon-wrapper">📖</span>
                            <h2 class="tifinagh">ⵜⵓⵍⵍⵉⵙⵉⵏ</h2>
                            <p>ⵖⵔ ⵜⵓⵍⵍⵉᱥⵉⵏ ⵙ ⵜⵎⴰⵣⵉⵖⵜ</p>
                        </a>

                        <a href="learn_word.html" class="nav-box">
                            <span class="icon-wrapper">🏠</span>
                            <h2 class="tifinagh">ⵜⵉⴳⵓⵔⵉⵡⵉⵏ</h2>
                            <p>ⵍⵎⴷ ⵜⵉⴳⵓⵔⵉⵡⵉⵏ</p>
                        </a>

                        <a href="learn_grammar.html" class="nav-box">
                            <span class="icon-wrapper">📘</span>
                            <h2 class="tifinagh">ⵜⴰⵊⵕⵕⵓⵎⵜ</h2>
                            <p>ⵍⵎⴷ ⵜⴰⵊⵕⵕⵓⵎⵜ ⴷ ⵓⵙⵏⵎⴰⵔⵔⴰ</p>
                        </a>
                    </div>
                </div>
            </div>

             <!-- Grammar Section -->
             <div class="collapsible-section">
                <div class="collapsible-header" onclick="toggleSection('grammar-section')">
                    <h2>ⵜⴰⵊⵕⵕⵓⵎⵜ - Grammar</h2>
                    <span class="collapsible-toggle" id="grammar-section-toggle">+</span>
                </div>
                <div class="collapsible-content" id="grammar-section">
                    <div class="nav-boxes">
                        <a href="learn_grammar.html" class="nav-box">
                            <span class="icon-wrapper">📘</span>
                            <h2 class="tifinagh">ⵜⴰⵊⵕⵕⵓⵎⵜ</h2>
                            <p>Learn about Amazigh grammar.</p>
                        </a>
                         <a href="verbs_lesson.html" class="nav-box">
                            <span class="icon-wrapper">📝</span>
                            <h2 class="tifinagh">ⴰⵎⵢⴰⴳ</h2>
                            <p>ⵍⵎⴷ ⵖⴼ ⵓⵎⵢⴰⴳ</p>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Dictionary Section -->
            <div class="collapsible-section">
                <div class="collapsible-header" onclick="toggleSection('dictionary-section')">
                    <h2>ⴰⵎⴰⵡⴰⵍ - Dictionary</h2>
                    <span class="collapsible-toggle" id="dictionary-section-toggle">+</span>
                </div>
                <div class="collapsible-content" id="dictionary-section">
                    <div class="nav-boxes">
                        <a href="dictionary.html" class="nav-box">
                            <span class="icon-wrapper">📚</span>
                            <h2 class="tifinagh">ⴰⵎⴰⵡⴰⵍ</h2>
                            <p>Look up words and find their translation. For languages are supported</p>
                        </a>
                    </div>
                </div>
            </div>

             <!-- Letters converter Section -->
             <div class="collapsible-section">
                <div class="collapsible-header" onclick="toggleSection('letters-converter-section')">
                    <h2>ⴰⵎⵙⵏⴼⵍ ⵏ ⵢⵉⵙⴽⴽⵉⵍⵏ - Letters converter</h2>
                    <span class="collapsible-toggle" id="letters-converter-section-toggle">+</span>
                </div>
                <div class="collapsible-content" id="letters-converter-section">
                    <div class="nav-boxes">
                        <a href="tools.html" class="nav-box">
                            <span class="icon-wrapper">Z⇄ⵣ</span>
                            <h2 class="tifinagh">ⴰⵎⵙⵏⴼⵍ ⵏ ⵢⵉⵙⴽⴽⵉⵍⵏ</h2>
                            <p></p>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Numbers to words converter Section -->
             <div class="collapsible-section">
                <div class="collapsible-header" onclick="toggleSection('numbers-to-words-section')">
                    <h2>ⴰⵎⵙⵏⴼⵍ ⵏ ⵡⵓⵟⵟⵓⵏⵏ ⵖⵔ ⵜⴳⵓⵔⵉⵡⵉⵏ - Numbers to words converter</h2>
                    <span class="collapsible-toggle" id="numbers-to-words-section-toggle">+</span>
                </div>
                <div class="collapsible-content" id="numbers-to-words-section">
                    <div class="nav-boxes">
                         <a href="tools.html" class="nav-box">
                            <span class="icon-wrapper">1️→ⵢⴰⵏ</span>
                            <h2 class="tifinagh">ⴰⵎⵙⵏⴼⵍ ⵏ ⵡⵓⵟⵟⵓⵏⵏ ⵖⵔ ⵜⴳⵓⵔⵉⵡⵉⵏ</h2>
                            <p></p>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Questions Section -->
             <div class="collapsible-section">
                <div class="collapsible-header" onclick="toggleSection('questions-page-section')">
                    <h2>ⵉⵙⵇⵙⵉⵜⵏ - Questions Page</h2>
                    <span class="collapsible-toggle" id="questions-page-section-toggle">+</span>
                </div>
                <div class="collapsible-content" id="questions-page-section">
                    <div class="nav-boxes">
                         <a href="questions.html" class="nav-box">
                            <span class="icon-wrapper" style="color:red;">❓</span>
                            <h2 class="tifinagh">ⵉⵙⵇⵙⵉⵜⵏ</h2>
                            <p></p>
                        </a>
                    </div>
                </div>
            </div>

             <!-- Conjugation Section -->
             <div class="collapsible-section">
                <div class="collapsible-header" onclick="toggleSection('conjugation-section')">
                    <h2>ⴰⵎⵙⴼⵜⵉ - Conjugation</h2>
                    <span class="collapsible-toggle" id="conjugation-section-toggle">+</span>
                </div>
                <div class="collapsible-content" id="conjugation-section">
                    <div class="nav-boxes">
                         <a href="verbs.html" class="nav-box">
                            <span class="icon-wrapper" style="color:red;">🏃‍♂️</span>
                            <h2 class="tifinagh">ⴰⵎⵙⴼⵜⵉ</h2>
                            <p>Conjugate verbs in all verb modes</p>
                        </a>
                    </div>
                </div>
            </div>

             <!-- Coming Soon Section -->
             <div class="collapsible-section">
                <div class="collapsible-header" onclick="toggleSection('coming-soon-section')">
                    <h2>ⴳ ⵎⴰⴷ ⵏⵏ ⵓⵔ ⵢⴰⴳⴳⵓⴳⵏ - Coming Soon</h2>
                    <span class="collapsible-toggle" id="coming-soon-section-toggle">+</span>
                </div>
                <div class="collapsible-content" id="coming-soon-section">
                    <div class="nav-boxes">
                         <a href="index.html" class="nav-box">
                            <span class="icon-wrapper" style="color:red;">⛔</span>
                            <h2 class="tifinagh">ⴳ ⵎⴰⴷ ⵏⵏ ⵓⵔ ⵢⴰⴳⴳⵓⴳⵏ</h2>
                            <h2>Coming soon</h2>
                            <p></p>
                        </a>
                    </div>
                </div>
            </div>


        </main>

        <footer>
            <p>© 2025 Learn Amazigh</p>
        </footer>
    </div>

    <script>
        function toggleSection(sectionId) {
            const content = document.getElementById(sectionId);
            const toggleIcon = document.getElementById(sectionId + '-toggle');
            content.classList.toggle('show');
            if (content.classList.contains('show')) {
                toggleIcon.textContent = '-';
            } else {
                toggleIcon.textContent = '+';
            }
        }

        // JavaScript for the show/hide menu
        const navToggle = document.querySelector('.nav-toggle');

        navToggle.addEventListener('click', () => {
            // For now, it does nothing as there's no menu to toggle in this combined page.
            // You can add menu functionality here if needed.
        });
    </script>
</body>
</html>
