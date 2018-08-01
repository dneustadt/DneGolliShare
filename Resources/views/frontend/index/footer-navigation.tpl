{extends file='parent:frontend/index/footer-navigation.tpl'}

{block name='frontend_index_footer_column_service_hotline_content'}
    {$smarty.block.parent}
    {if {config name='golli_footer_display'} == 'col1'}
        {include file='frontend/plugins/golli/widget.tpl'}
    {/if}
{/block}

{block name="frontend_index_footer_column_service_menu_content"}
    {$smarty.block.parent}
    {if {config name='golli_footer_display'} == 'col2'}
        {include file='frontend/plugins/golli/widget.tpl'}
    {/if}
{/block}

{block name="frontend_index_footer_column_information_menu_content"}
    {$smarty.block.parent}
    {if {config name='golli_footer_display'} == 'col3'}
        {include file='frontend/plugins/golli/widget.tpl'}
    {/if}
{/block}

{block name="frontend_index_footer_column_newsletter_content"}
    {$smarty.block.parent}
    {if {config name='golli_footer_display'} == 'col4'}
        {include file='frontend/plugins/golli/widget.tpl'}
    {/if}
{/block}