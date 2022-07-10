% rebase('base.tpl', title=meta['title'])
<div class="row">
    <header>
        <h4> {{ meta['title'] }} </h4>
        <p><i>Published: {{ meta['date'] }}</i></p>
    </header>
    <atricle>
        {{ !html }}
    </article>
</div>
<div class="row flex-right">
    <a class="back__link">&#8592; Back</a>
</div>