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

<div class="block {$addition_cls|escape:'html':'UTF-8'} {if isset($stylecls)&&$stylecls}block-{$stylecls|escape:'html':'UTF-8'}{/if}">
	{if isset($widget_heading)&&!empty($widget_heading)}
	<div class="widget-heading title_block">
		{$widget_heading|escape:'html':'UTF-8'}
	</div>
	{/if}
	<div class="block_content">
		<ul class="bo-social-icons">
			{if $facebook_url != ''}
				<li class="facebook">
					<a class="_blank" href="{$facebook_url|escape:'html':'UTF-8'}">
					    <i class="icon icon-facebook"></i>
						<span>{l s='Facebook' mod='pspagebuilder'}</span>
					</a>
				</li>
			{/if}

			{if $twitter_url != ''}
				<li class="twitter">
					<a class="_blank" href="{$twitter_url|escape:'html':'UTF-8'}">
						<i class="icon icon-twitter"></i>
						<span>{l s='Twitter' mod='pspagebuilder'}</span>
					</a>
				</li>
			{/if}

			{if $rss_url != ''}
				<li class="rss">
					<a class="_blank" href="{$rss_url|escape:'html':'UTF-8'}">
						<i class="icon icon-rss"></i>
						<span>{l s='RSS' mod='pspagebuilder'}</span>
					</a>
				</li>
			{/if}

			{if $youtube_url != ''}
				<li class="youtube">
					<a class="_blank" href="{$youtube_url|escape:'html':'UTF-8'}">
						<i class="icon icon-youtube"></i>
						<span>{l s='YouTube' mod='pspagebuilder'}</span>
					</a>
				</li>
			{/if}

			{if $google_plus_url != ''}
				<li class="google_plus">
					<a class="_blank" href="{$google_plus_url|escape:'html':'UTF-8'}">
						<i class="icon icon-google-plus"></i>
						<span>{l s='Google+' mod='pspagebuilder'}</span>
					</a>
				</li>
			{/if}

			{if $pinterest_url != ''}
				<li class="pinterest">
					<a class="_blank" href="{$pinterest_url|escape:'html':'UTF-8'}">
						<i class="icon icon-pinterest"></i>
						<span>{l s='Pinterest' mod='pspagebuilder'}</span>
					</a>
				</li>
			{/if}

			{if $vimeo_url != ''}
				<li class="vimeo">
					<a href="{$vimeo_url|escape:'html':'UTF-8'}">
						<i class="icon icon-vimeo-square"></i>
						<span>{l s='Vimeo' mod='pspagebuilder'}</span>
					</a>
				</li>
			{/if}

			{if $instagram_url != ''}
				<li class="instagram">
					<a class="_blank" href="{$instagram_url|escape:'html':'UTF-8'}">
						<i class="icon icon-instagram"></i>
						<span>{l s='Instagram' mod='pspagebuilder'}</span>
					</a>
				</li>
			{/if}
		</ul>
	</div>
</div>