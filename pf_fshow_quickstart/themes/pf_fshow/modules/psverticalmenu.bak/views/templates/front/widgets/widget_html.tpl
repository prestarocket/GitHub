{*
* Pts Prestashop Theme Framework for Prestashop 1.6.x
*
* @package   psverticalmenu
* @version   1.0
* @author    http://www.prestabrain.com
* @copyright Copyright (C) October 2013 prestabrain.com <@emai:prestabrain@gmail.com>
*               <info@prestabrain.com>.All rights reserved.
* @license   GNU General Public License version 2
*}
{if isset($html)}
<div class="widget-html block">
	{if isset($widget_heading)&&!empty($widget_heading)}
	<div class="widget_heading title_block">
		{$widget_heading|escape:'htmlall':'UTF-8'}
	</div>
	{/if}
	<div class="widget-inner block_content">
		{$html}{* HTML, can not escape *}
	</div>
</div>
{/if}