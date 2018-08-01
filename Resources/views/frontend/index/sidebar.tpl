{extends file='parent:frontend/index/sidebar.tpl'}

{block name="frontend_index_left_inner"}
    {$smarty.block.parent}
    {if {config name='golli_sidebar_display'}}
        {include file='frontend/plugins/golli/widget.tpl'}
    {/if}
{/block}