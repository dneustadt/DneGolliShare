{if {config name='golli_active'} && {config name='golli_username'}}
    <iframe src="https://gol.li/{config name='golli_username'}/share"
            style="width: 100%;
                   max-width: {config name='golli_widget_width'}px;
                   height: {config name='golli_widget_height'}px;
                   border: 1px solid #ccc;"></iframe>
{/if}