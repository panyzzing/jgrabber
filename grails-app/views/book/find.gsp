<script type="text/javascript">
    $(document).ready(function () {
        $('.base-form input[type=text]').keydown(
                function (e) {
                    if (e.keyCode == 13 || e.keyCode == 10) {
                        $('#find').click();
                    }
                });
        $('#find').click(function () {
            $.ajax({ // context other than ROOT? ?
                url:"/find-book",
                dataType:'text',
                data:{
                    isbn:$('#isbn-pattern').val(),
                    title:$('#title-pattern').val()
                },
                error:function (e, b, c) {
                    $('#found-books').html(c);
                },
                success:function (ok, b, c) {
                    $('#found-books').html(ok);
                }
            });
        });
    });
</script>

<div class="par">
    Try to find a book. For example type in title pattern <b>javascript</b>
    or <b>ruby</b>.
</div>
<div class="base-form" id="search-form">
    <div class="row" style="width: 485px;">
        <span class="cap">Title</span>
        <input type="button" style="margin-left: 5px; width: 60px;"
               id="find" value="find"/>
        <input type="text" id="title-pattern"/>
    </div>
    <div class="row">
        <span class="cap">ISBN</span>
        <input type="text" id="isbn-pattern"/>
    </div>
    <div class="row">
        <div class="hint">
            Pattern language is simple. It's just substring.
        </div>
        <div class="reset"></div>
    </div>
</div>

<div id="found-books">
</div>