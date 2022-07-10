% rebase('base.tpl', title='Home')
<h3 class="row">Home</h3>
<div class="row flex-spaces flex-middle">
    <div class="sm-7 col">
        % if posts:
            % for post in posts:
                <article>
                    <time datetime="{{post['meta']['date']}}">
                    {{post['meta']['date']}}
                    </time>
                    -
                    <header style="display: inline;">
                        <a href="{{post['link']}}">{{post['meta']['title']}}</a>
                    </header>
                </article>
            % end
        % else:
            <p>No posts published yet. Coming soon!</p>
        % end
    </div>
    <div class="sm-5 col">
        <img width="500" height="300" src="/static/img/p.jpg" class="no-border" alt="">
        <nav>
            <span>
                <small><i>Clipart by : <a href="https://cliparts.zone/">Cliparts Zone</a></i></small>
            </span>
        </nav>
    </div>
</div>