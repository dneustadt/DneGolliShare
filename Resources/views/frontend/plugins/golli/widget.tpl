{if {config name='golli_active'} && {config name='golli_username'}}
    <iframe src="https://gol.li/{config name='golli_username'}/share?{if {config name='golli_background_color'}}bg={{config name='golli_background_color'}|substr:1}&{/if}{if {config name='golli_border_color'}}b={{config name='golli_border_color'}|substr:1}{/if}"
            style="width: 100%;
                   max-width: {config name='golli_widget_width'}px;
                   height: {config name='golli_widget_height'}px;
                   border: 1px solid {if {config name='golli_border_color'}|strlen > 1}{config name='golli_border_color'}{else}#ccc{/if};"></iframe>
{/if}