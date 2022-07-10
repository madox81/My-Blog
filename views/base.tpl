<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/static/css/paper.min.css">
        <link rel="stylesheet" href="/static/css/styles.css">
        <title>Mohamad A. Blog - {{title}} </title>
    </head>
    <body>
        <header class="container container-sm margin-top-small">
            <nav class="nav__color split-nav">
                <div class="nav-brand">
                    % if title == 'Home':
                        <h3>Mohamad A.</h3>
                    % else:
                        <a href="/"><h3>Mohamad A.</h3></a>
                    % end
                    <span> <small>contact: <a href="mailto:m256aa@gmail.com">m256aa@gmail.com</a></small></span>
                </div>
                <div class="collapsible">
                    <input id="collapsible1" type="checkbox" name="collapsible1">
                    <label for="collapsible1">
                        <div class="bar1"></div>
                        <div class="bar2"></div>
                        <div class="bar3"></div>
                    </label>
                    <div class="collapsible-body">
                        <ul class="inline">
                            <li><a href="/about">about</a></li>
                            <li><a href="https://github.com/madox81">github</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <main class="container container-sm margin-top-small paper border">
            {{!base}}
        </main>
        <footer class="container container-sm margin-top-small">
            <nav class="nav__color">
                <div class="row flex-center">
                    <span class="">Powered By:</span>
                    <span class="padding-left-small"><small><a href="https://deta.sh">Deta Cloude |</a></small></span>
                    <span class="padding-left-small"><small><a href="https://www.getpapercss.com/">Paper Css</a></small></span>
                </div>
            </nav>
        </footer>
        <script src="/static/js/main.js"></script>
    </body>
</html>