{*
* Pts Prestashop Theme Framework for Prestashop 1.6.x
*
* @package   pspagebuilder
* @version   5.0
* @author    http://www.prestabrain.com
* @copyright Copyright (C) October 2013 prestabrain.com <@emai:prestabrain@gmail.com>
*               <info@prestabrain.com>.All rights reserved.
* @license   GNU General Public License version 2
*}

<div id="ptsblockblogstabs{$tabname|escape:'html':'UTF-8'}" class="widget widget-latestblog {$addition_cls|escape:'html':'UTF-8'} {if isset($stylecls)&&$stylecls}block-{$stylecls|escape:'html':'UTF-8'}{/if}">
	<h4 class="title_block space-60">
		<span class="sub-title">{$sub_title|escape:'html':'UTF-8'}</span>
		<span class="blog_title">{l s='From Blogs' mod='pspagebuilder'}</span>
		{if $config->get('blockpts_blogs_show',1)}
			<a class="pull-right" href="{$view_all_link|escape:'html':'UTF-8'}" title="{l s='View all' mod='pspagebuilder'}"></a>
		{/if}
	</h4>
	<div class="block_content">
		{if !empty($blogs)}
			{if isset($display_mode) && $display_mode == 'carousel'}
				{include file="{$items_owl_carousel_tpl}" items=$blogs}
			{else}
				{include file="{$items_normal_tpl}" items=$blogs}
			{/if}
		{/if}
	</div>	
</div>
 