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
{if $categories_tabs}
<!-- Block categories module -->
<div class="block">

	<div class="block_content">

		{if isset($widget_heading)&&!empty($widget_heading)}
			<div class="widget-heading title_block">
				{$widget_heading|escape:'html':'UTF-8'}
			</div>
		{/if}
		
		{if !empty($categories_tabs)}
			<ul id="catProductsTabs" class="nav nav-tabs">
			  {foreach $categories_tabs as $key=>$category}
				<li{if $key == 0} class="active"{/if}>
					<a class="btn-tooltip" href="#cattab{$category.category_obj->id}" data-toggle="tab" title="{l s={$category.category_obj->name|escape:'html':'UTF-8'} mod='pspagebuilder'}">
						{if $category.category_info && $category.category_info.icon_class}	
							<i class="{$category.category_info.icon_class|escape:'html':'UTF-8'}"></i>
						{elseif $category.category_info && $category.category_info.icon}
							<img src="{$category.category_info.icon|escape:'htmlall':'UTF-8'}" alt="{$category.category_obj->name|escape:'html':'UTF-8'}">
						{/if}
						<span class="tab-name">{$category.category_obj->name|escape:'html':'UTF-8'}</span>
					</a>
				</li>
			  {/foreach}
			</ul>
		 
			<div id="catProductsTabsContent" class="tab-content">
			 {foreach $categories_tabs as $key=>$category}
				<div class="tab-pane{if $key == 0} active{/if}" id="cattab{$category.category_obj->id|escape:'html':'UTF-8'}">
					{assign var="tabname" value="categoriestabs_{$category.category_obj->id|escape:'html':'UTF-8'}"} 
					{if isset($display_mode) && $display_mode == 'carousel'}
						{include file="{$items_owl_carousel_tpl}" items=$category.products class="product_list products-block"}
					{else}
						{include file="{$items_normal_tpl}" items=$category.products class="product_list products-block"}
					{/if}
				</div>
			{/foreach}
			</div>
 
		{/if}
	</div>
</div>
<!-- /Block categories module -->
{/if}
