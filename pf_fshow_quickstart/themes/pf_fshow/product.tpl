{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{include file="$tpl_dir./errors.tpl"}
{if $errors|@count == 0}
	{if !isset($priceDisplayPrecision)}
		{assign var='priceDisplayPrecision' value=2}
	{/if}
	{if !$priceDisplay || $priceDisplay == 2}
		{assign var='productPrice' value=$product->getPrice(true, $smarty.const.NULL, $priceDisplayPrecision)}
		{assign var='productPriceWithoutReduction' value=$product->getPriceWithoutReduct(false, $smarty.const.NULL, $priceDisplayPrecision)}
	{elseif $priceDisplay == 1}
		{assign var='productPrice' value=$product->getPrice(false, $smarty.const.NULL, $priceDisplayPrecision)}
		{assign var='productPriceWithoutReduction' value=$product->getPriceWithoutReduct(true, $smarty.const.NULL, $priceDisplayPrecision)}
	{/if}
<div class="product-info" itemscope itemtype="http://schema.org/Product">
	<meta itemprop="url" content="{$link->getProductLink($product)}">
	<div class="primary_block block">
		{if isset($adminActionDisplay) && $adminActionDisplay}
			<div id="admin-action" class="container">
				<p class="alert alert-info">{l s='This product is not visible to your customers.'}
					<input type="hidden" id="admin-action-product-id" value="{$product->id}" />
					<a id="publish_button" class="btn btn-default button button-small" href="#">
						<span>{l s='Publish'}</span>
					</a>
					<a id="lnk_view" class="btn btn-default button button-small" href="#">
						<span>{l s='Back'}</span>
					</a>
				</p>
				<p id="admin-action-result"></p>
			</div>
		{/if}
		{if isset($confirmation) && $confirmation}
			<p class="confirmation">
				{$confirmation}
			</p>
		{/if}
		<!-- left infos-->
		<div class="row">  
			<div class="pb-left-column col-xs-12 col-sm-12 {if (isset($left_column_size) && !empty($left_column_size)) || (isset($right_column_size) && !empty($right_column_size))}col-md-6 col-lg-5{else}col-md-5 col-lg-6{/if}">


			    {if isset($images) && count($images) > 1}
					<p class="resetimg clear no-print hidden">
						<span id="wrapResetImages" style="display: none;">
							<a href="{$link->getProductLink($product)|escape:'html':'UTF-8'}" data-id="resetImages">
								<i class="icon-repeat"></i>
								{l s='Display all pictures'}
							</a>
						</span>
					</p>
				{/if}
	

				<!-- product img--> 
				<div id="image-block" class="clearfix col-xs-10 col-sm-10 col-md-10 col-lg-10">
					<!--       
					{if $product->new}
						<span class="product-label new-box">
							<span class="new-label">{l s='New'}</span>
						</span>
					{/if}
					{if $product->on_sale}
						<span class="product-label sale-box no-print">
							<span class="sale-label">{l s='Sale!'}</span>
						</span>
					{elseif $product->specificPrice && $product->specificPrice.reduction && $productPriceWithoutReduction > $productPrice}
						<span class="product-label sale-box discount"><span>{l s='Reduced price!'}</span></span>
					{/if}
					-->
					{if $have_image}
						<span id="view_full_size">
							{if $jqZoomEnabled && $have_image && !$content_only}
								<a class="jqzoom" title="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" rel="gal1" href="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'thickbox_default')|escape:'html':'UTF-8'}">
									<img itemprop="image" src="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'large_default')|escape:'html':'UTF-8'}" title="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" alt="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}"/>
								</a>
							{else}
								<img id="bigpic" itemprop="image" src="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'large_default')|escape:'html':'UTF-8'}" title="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" alt="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" width="{$largeSize.width}" height="{$largeSize.height}"/>
								{if !$content_only}
									<span class="span_link no-print">{l s='View larger'}</span>
								{/if}
							{/if}
						</span>
					{else}
						<span id="view_full_size">
							<img itemprop="image" src="{$img_prod_dir}{$lang_iso}-default-large_default.jpg" id="bigpic" alt="" title="{$product->name|escape:'html':'UTF-8'}" width="{$largeSize.width}" height="{$largeSize.height}"/>
							{if !$content_only}
								<span class="span_link">
									{l s='View larger'}
								</span>
							{/if}
						</span>
					{/if}
				</div> <!-- end image-block -->


				{if isset($images) && count($images) > 0}
					<!-- thumbnails -->
					<div id="views_block" class="clearfix views-vertical col-xs-2 col-sm-2 col-md-2 col-lg-2 {if isset($images) && count($images) < 2}hidden{/if}">
						{if isset($images) && count($images) > 4}
							<span class="view_scroll_spacer view_scroll_spacer_left carousel-controls">
								<a id="view_scroll_left" class="carousel-control left" title="{l s='Other views'}" href="javascript:{ldelim}{rdelim}">
									<i class="icon-angle-left"></i>
								</a>
							</span>
						{/if}


						<div id="thumbs_list" class="thumbs-vertical">
							<ul id="thumbs_list_frame">
							{if isset($images)}
								{foreach from=$images item=image name=thumbnails}
									{assign var=imageIds value="`$product->id`-`$image.id_image`"}
									{if !empty($image.legend)}
										{assign var=imageTitle value=$image.legend|escape:'html':'UTF-8'}
									{else}
										{assign var=imageTitle value=$product->name|escape:'html':'UTF-8'}
									{/if}
										<li id="thumbnail_{$image.id_image}"{if $smarty.foreach.thumbnails.last} class="last"{/if}>
									<a{if $jqZoomEnabled && $have_image && !$content_only} href="javascript:void(0);" rel="{literal}{{/literal}gallery: 'gal1', smallimage: '{$link->getImageLink($product->link_rewrite, $imageIds, 'large_default')|escape:'html':'UTF-8'}',largeimage: '{$link->getImageLink($product->link_rewrite, $imageIds, 'thickbox_default')|escape:'html':'UTF-8'}'{literal}}{/literal}"{else} href="{$link->getImageLink($product->link_rewrite, $imageIds, 'thickbox_default')|escape:'html':'UTF-8'}"	data-fancybox-group="other-views" class="fancybox{if $image.id_image == $cover.id_image} shown{/if}"{/if} title="{$imageTitle}">
											<img class="img-responsive" id="thumb_{$image.id_image}" src="{$link->getImageLink($product->link_rewrite, $imageIds, 'cart_default')|escape:'html':'UTF-8'}" alt="{$imageTitle}" title="{$imageTitle}" itemprop="image" />
										</a>
									</li>
								{/foreach}
							{/if}
							</ul>
						</div> <!-- end thumbs_list -->

							{if isset($images) && count($images) > 4}
							<span class="view_scroll_spacer view_scroll_spacer_right carousel-controls">
								<a id="view_scroll_right" class="carousel-control right" title="{l s='Other views'}" href="javascript:{ldelim}{rdelim}">
								<i class="icon-angle-right"></i>
							</a>
							</span>
						{/if}
					</div> <!-- end views-block -->
					<!-- end thumbnails -->
				{/if}
			
			</div> <!-- end pb-left-column -->
			<!-- end left infos--> 
			
			<!-- pb-right-column-->
			<div class="pb-right-column col-xs-12 col-sm-12 {if (isset($left_column_size) && !empty($left_column_size)) || (isset($right_column_size) && !empty($right_column_size))}col-md-6 col-lg-5{else}col-md-7 col-lg-6{/if}">
					<h1 itemprop="name">{$product->name|escape:'html':'UTF-8'}</h1>
		
					{if $product->online_only}
						<p class="online_only">{l s='Online only'}</p>
					{/if}
					
	
					{if ($display_qties == 1 && !$PS_CATALOG_MODE && $PS_STOCK_MANAGEMENT && $product->available_for_order)}
						<!-- number of item in stock -->
						<p id="pQuantityAvailable"{if $product->quantity <= 0} style="display: none;"{/if}>
							<span id="quantityAvailable">{$product->quantity|intval}</span>
							<span {if $product->quantity > 1} style="display: none;"{/if} id="quantityAvailableTxt">{l s='Item'}</span>
							<span {if $product->quantity == 1} style="display: none;"{/if} id="quantityAvailableTxtMultiple">{l s='Items'}</span>
						</p>
					{/if}
					<!-- availability or doesntExist -->
					<p id="availability_statut"{if !$PS_STOCK_MANAGEMENT || ($product->quantity <= 0 && !$product->available_later && $allow_oosp) || ($product->quantity > 0 && !$product->available_now) || !$product->available_for_order || $PS_CATALOG_MODE} style="display: none;"{/if}>
						{*<span id="availability_label">{l s='Availability:'}</span>*}
						<span id="availability_value" class="label{if $product->quantity <= 0 && !$allow_oosp} label-danger{elseif $product->quantity <= 0} label-warning{else} label-success{/if}">{if $product->quantity <= 0}{if $PS_STOCK_MANAGEMENT && $allow_oosp}{$product->available_later}{else}{l s='This product is no longer in stock'}{/if}{elseif $PS_STOCK_MANAGEMENT}{$product->available_now}{/if}</span>
					</p>
					{if $PS_STOCK_MANAGEMENT}
						{if !$product->is_virtual}{hook h="displayProductDeliveryTime" product=$product}{/if}
						<p class="warning_inline" id="last_quantities"{if ($product->quantity > $last_qties || $product->quantity <= 0) || $allow_oosp || !$product->available_for_order || $PS_CATALOG_MODE} style="display: none"{/if} >{l s='Warning: Last items in stock!'}</p>
					{/if}
					<p id="availability_date"{if ($product->quantity > 0) || !$product->available_for_order || $PS_CATALOG_MODE || !isset($product->available_date) || $product->available_date < $smarty.now|date_format:'%Y-%m-%d'} style="display: none;"{/if}>
						<span id="availability_date_label">{l s='Availability date:'}</span>
						<span id="availability_date_value">{if Validate::isDate($product->available_date)}{dateFormat date=$product->available_date full=false}{/if}</span>
					</p>
					<!-- Out of stock hook -->
					<div id="oosHook"{if $product->quantity > 0} style="display: none;"{/if}>
						{$HOOK_PRODUCT_OOS}
					</div>
					{if ($product->show_price && !isset($restricted_country_mode)) || isset($groups) || $product->reference || (isset($HOOK_PRODUCT_ACTIONS) && $HOOK_PRODUCT_ACTIONS)}
						<!-- add to cart form-->
						<form id="buy_block"{if $PS_CATALOG_MODE && !isset($groups) && $product->quantity > 0} class="hidden"{/if} action="{$link->getPageLink('cart')|escape:'html':'UTF-8'}" method="post">
							<!-- hidden datas -->
							<p class="hidden">
								<input type="hidden" name="token" value="{$static_token}" />
								<input type="hidden" name="id_product" value="{$product->id|intval}" id="product_page_product_id" />
								<input type="hidden" name="add" value="1" />
								<input type="hidden" name="id_product_attribute" id="idCombination" value="" />
							</p>
							<div class="box-info-product">
								<div class="content_prices clearfix">
									{if $product->show_price && !isset($restricted_country_mode) && !$PS_CATALOG_MODE}
										<!-- prices -->
										<div>
											<p class="our_price_display" itemprop="offers" itemscope itemtype="http://schema.org/Offer">{strip}
												{if $product->quantity > 0}<link itemprop="availability" href="http://schema.org/InStock"/>{/if}
												{if $priceDisplay >= 0 && $priceDisplay <= 2}
													<span id="our_price_display" class="price" itemprop="price" content="{$productPrice}">{convertPrice price=$productPrice|floatval}</span>
													{if $tax_enabled  && ((isset($display_tax_label) && $display_tax_label == 1) || !isset($display_tax_label))}
														{if $priceDisplay == 1} {l s='tax excl.'}{else} {l s='tax incl.'}{/if}
													{/if}
													<meta itemprop="priceCurrency" content="{$currency->iso_code}" />
													{hook h="displayProductPriceBlock" product=$product type="price"}
												{/if}
											{/strip}</p>
											<p id="reduction_percent" {if !$product->specificPrice || $product->specificPrice.reduction_type != 'percentage'} style="display:none;"{/if}>{strip}
												<span id="reduction_percent_display">
													{if $product->specificPrice && $product->specificPrice.reduction_type == 'percentage'}-{$product->specificPrice.reduction*100}%{/if}
												</span>
											{/strip}</p>
											<p id="reduction_amount" {if !$product->specificPrice || $product->specificPrice.reduction_type != 'amount' || $product->specificPrice.reduction|floatval ==0} style="display:none"{/if}>{strip}
												<span id="reduction_amount_display">
												{if $product->specificPrice && $product->specificPrice.reduction_type == 'amount' && $product->specificPrice.reduction|floatval !=0}
													-{convertPrice price=$productPriceWithoutReduction|floatval-$productPrice|floatval}
												{/if}
												</span>
											{/strip}</p>
											<p id="old_price"{if (!$product->specificPrice || !$product->specificPrice.reduction)} class="hidden"{/if}>{strip}
												{if $priceDisplay >= 0 && $priceDisplay <= 2}
													{hook h="displayProductPriceBlock" product=$product type="old_price"}
													<span id="old_price_display"><span class="price">{if $productPriceWithoutReduction > $productPrice}{convertPrice price=$productPriceWithoutReduction|floatval}{/if}</span>{if $tax_enabled && $display_tax_label == 1} {if $priceDisplay == 1}{l s='tax excl.'}{else}{l s='tax incl.'}{/if}{/if}</span>
												{/if}
											{/strip}</p>
											{if $priceDisplay == 2}
												<br />
												<span id="pretaxe_price">{strip}
													<span id="pretaxe_price_display">{convertPrice price=$product->getPrice(false, $smarty.const.NULL)}</span> {l s='tax excl.'}
												{/strip}</span>
											{/if}
										</div> <!-- end prices -->
										{if $packItems|@count && $productPrice < $product->getNoPackPrice()}
											<p class="pack_price">{l s='Instead of'} <span style="text-decoration: line-through;">{convertPrice price=$product->getNoPackPrice()}</span></p>
										{/if}
										{if $product->ecotax != 0}
											<p class="price-ecotax">{l s='Including'} <span id="ecotax_price_display">{if $priceDisplay == 2}{$ecotax_tax_exc|convertAndFormatPrice}{else}{$ecotax_tax_inc|convertAndFormatPrice}{/if}</span> {l s='for ecotax'}
												{if $product->specificPrice && $product->specificPrice.reduction}
												<br />{l s='(not impacted by the discount)'}
												{/if}
											</p>
										{/if}
										{if !empty($product->unity) && $product->unit_price_ratio > 0.000000}
											{math equation="pprice / punit_price"  pprice=$productPrice  punit_price=$product->unit_price_ratio assign=unit_price}
											<p class="unit-price"><span id="unit_price_display">{convertPrice price=$unit_price}</span> {l s='per'} {$product->unity|escape:'html':'UTF-8'}</p>
											{hook h="displayProductPriceBlock" product=$product type="unit_price"}
										{/if}
									{/if} {*close if for show price*}
									{hook h="displayProductPriceBlock" product=$product type="weight" hook_origin='product_sheet'}
									{hook h="displayProductPriceBlock" product=$product type="after_price"}
									<div class="clear"></div>
								</div> <!-- end content_prices -->

								{if isset($HOOK_EXTRA_RIGHT) && $HOOK_EXTRA_RIGHT}{$HOOK_EXTRA_RIGHT}{/if}

								{if $product->description_short || $packItems|@count > 0}
									<div id="short_description_block">
										{if $product->description_short}
											<div id="short_description_content" class="rte align_justify" itemprop="description">{$product->description_short}</div>
										{/if}

										{if isset($product) && $product->description}
											<p class="buttons_bottom_block">
												<a href="javascript:{ldelim}{rdelim}" class="button">
													{l s='More details'}
												</a>
											</p>
										{/if}
										<!--{if $packItems|@count > 0}
											<div class="short_description_pack">
											<h3>{l s='Pack content'}</h3>
												{foreach from=$packItems item=packItem}

												<div class="pack_content">
													{$packItem.pack_quantity} x <a href="{$link->getProductLink($packItem.id_product, $packItem.link_rewrite, $packItem.category)|escape:'html':'UTF-8'}">{$packItem.name|escape:'html':'UTF-8'}</a>
													<p>{$packItem.description_short}</p>
												</div>
												{/foreach}
											</div>
										{/if}-->
									</div> <!-- end short_description_block -->
								{/if}

								<div class="product_attributes clearfix">
									<!-- minimal quantity wanted -->
									<p id="minimal_quantity_wanted_p"{if $product->minimal_quantity <= 1 || !$product->available_for_order || $PS_CATALOG_MODE} style="display: none;"{/if}>
										{l s='The minimum purchase order quantity for the product is'} <b id="minimal_quantity_label">{$product->minimal_quantity}</b>
									</p>
									{if isset($groups)}
										<!-- attributes -->
										<div id="attributes">
											<div class="clearfix"></div>
											{foreach from=$groups key=id_attribute_group item=group}
												{if $group.attributes|@count}
													<fieldset class="attribute_fieldset">
														<label class="attribute_label" {if $group.group_type != 'color' && $group.group_type != 'radio'}for="group_{$id_attribute_group|intval}"{/if}>{$group.name|escape:'html':'UTF-8'}&nbsp;</label>
														{assign var="groupName" value="group_$id_attribute_group"}
														<div class="attribute_list">
															{if ($group.group_type == 'select')}
																<select name="{$groupName}" id="group_{$id_attribute_group|intval}" class="form-control attribute_select no-print">
																	{foreach from=$group.attributes key=id_attribute item=group_attribute}
																		<option value="{$id_attribute|intval}"{if (isset($smarty.get.$groupName) && $smarty.get.$groupName|intval == $id_attribute) || $group.default == $id_attribute} selected="selected"{/if} title="{$group_attribute|escape:'html':'UTF-8'}">{$group_attribute|escape:'html':'UTF-8'}</option>
																	{/foreach}
																</select>
															{elseif ($group.group_type == 'color')}
																<ul id="color_to_pick_list" class="clearfix">
																	{assign var="default_colorpicker" value=""}
																	{foreach from=$group.attributes key=id_attribute item=group_attribute}
																		{assign var='img_color_exists' value=file_exists($col_img_dir|cat:$id_attribute|cat:'.jpg')}
																		<li{if $group.default == $id_attribute} class="selected"{/if}>
																			<a href="{$link->getProductLink($product)|escape:'html':'UTF-8'}" id="color_{$id_attribute|intval}" name="{$colors.$id_attribute.name|escape:'html':'UTF-8'}" class="color_pick{if ($group.default == $id_attribute)} selected{/if}"{if !$img_color_exists && isset($colors.$id_attribute.value) && $colors.$id_attribute.value} style="background:{$colors.$id_attribute.value|escape:'html':'UTF-8'};"{/if} title="{$colors.$id_attribute.name|escape:'html':'UTF-8'}">
																				{if $img_color_exists}
																					<img src="{$img_col_dir}{$id_attribute|intval}.jpg" alt="{$colors.$id_attribute.name|escape:'html':'UTF-8'}" title="{$colors.$id_attribute.name|escape:'html':'UTF-8'}" width="20" height="20" />
																				{/if}
																			</a>
																		</li>
																		{if ($group.default == $id_attribute)}
																			{$default_colorpicker = $id_attribute}
																		{/if}
																	{/foreach}
																</ul>
																<input type="hidden" class="color_pick_hidden" name="{$groupName|escape:'html':'UTF-8'}" value="{$default_colorpicker|intval}" />
															{elseif ($group.group_type == 'radio')}
																<ul>
																	{foreach from=$group.attributes key=id_attribute item=group_attribute}
																		<li>
																			<input type="radio" class="attribute_radio" name="{$groupName|escape:'html':'UTF-8'}" value="{$id_attribute}" {if ($group.default == $id_attribute)} checked="checked"{/if} />
																			<span>{$group_attribute|escape:'html':'UTF-8'}</span>
																		</li>
																	{/foreach}
																</ul>
															{/if}
														</div> <!-- end attribute_list -->
													</fieldset>
												{/if}
											{/foreach}
										</div> <!-- end attributes -->
									{/if}
									<!-- quantity wanted -->
									{if !$PS_CATALOG_MODE}
										<div id="quantity_wanted_p"{if (!$allow_oosp && $product->quantity <= 0) || !$product->available_for_order || $PS_CATALOG_MODE} style="display: none;"{/if}>
											<label>{l s='Quantity'}</label> 
											<div class="quantity-field">
												<a href="#" data-field-qty="qty" class="btn button-minus product_quantity_down hidden">
													<span><i class="icon-minus"></i></span>
												</a>
												<input type="number" min="1" name="qty" id="quantity_wanted" class="text" value="{if isset($quantityBackup)}{$quantityBackup|intval}{else}{if $product->minimal_quantity > 1}{$product->minimal_quantity}{else}1{/if}{/if}" />
												<a href="#" data-field-qty="qty" class="btn button-plus product_quantity_up hidden">
													<span><i class="icon-plus"></i></span>
												</a>
												<span class="clearfix"></span>
											</div>
										</div>
									{/if}
									<div class="box-cart-bottom clearfix">
										<div{if (!$allow_oosp && $product->quantity <= 0) || !$product->available_for_order || (isset($restricted_country_mode) && $restricted_country_mode) || $PS_CATALOG_MODE} class="unvisible"{/if}>
											<p id="add_to_cart" class="buttons_bottom_block no-print">
												<button type="submit" name="Submit" class="exclusive btn btn-default">
													<span>{if $content_only && (isset($product->customization_required) && $product->customization_required)}{l s='Customize'}{else}{l s='Add to cart'}{/if}</span>
												</button>
											</p>
											{if isset($HOOK_PRODUCT_ACTIONS) && $HOOK_PRODUCT_ACTIONS}
												{$HOOK_PRODUCT_ACTIONS}
											{/if}
										</div>
									</div> <!-- end box-cart-bottom -->
									
								</div> <!-- end product_attributes -->

							</div> <!-- end box-info-product -->
						</form>
		
					{/if}

					{if !$content_only}
						<!-- usefull links-->
						<ul id="usefull_link_block" class="clearfix no-print">
							{if $HOOK_EXTRA_LEFT}<li>{$HOOK_EXTRA_LEFT}</li>{/if}
						</ul>
					{/if}
					<div class="pts-condition">
						<p id="product_reference"{if empty($product->reference) || !$product->reference} style="display: none;"{/if}>
							<label>{l s='Reference:'} </label>
							<span class="editable" itemprop="sku"{if !empty($product->reference) && $product->reference} content="{$product->reference}{/if}">{if !isset($groups)}{$product->reference|escape:'html':'UTF-8'}{/if}</span>
						</p>
						{if !$product->is_virtual && $product->condition}
						<p id="product_condition">
							<label>{l s='Condition:'} </label>
							{if $product->condition == 'new'}
								<link itemprop="itemCondition" href="http://schema.org/NewCondition"/>
								<span class="editable">{l s='New product'}</span>
							{elseif $product->condition == 'used'}
								<link itemprop="itemCondition" href="http://schema.org/UsedCondition"/>
								<span class="editable">{l s='Used'}</span>
							{elseif $product->condition == 'refurbished'}
								<link itemprop="itemCondition" href="http://schema.org/RefurbishedCondition"/>
								<span class="editable">{l s='Refurbished'}</span>
							{/if}
						</p>
						{/if}
						{if class_exists('PtsthemePanel')}											
							{plugin module='blocktags' hook='displayLeftColumn'}
						{/if}
					</div>
		

			</div> <!-- end pb-right-column-->
		</div>
	</div> <!-- end primary_block -->
	
	{if !$content_only}
		<div id="accordion-productinfo" class="panel-group block">
			{if $product->description}
				<!-- More info -->
				<div class="panel page-product-box">
					<div class="panel-heading">
						<h4 class="page-product-heading">
							<a href="#prductdesc" data-parent="#accordion-productinfo" data-toggle="collapse">{l s='More info'}</a>
						</h4>
					</div>
					<div id="prductdesc" class="panel-collapse collapse in">
						<!-- full description -->
						<div  class="rte panel-inner">{$product->description}</div>
					</div>
				</div>
				<!--end  More info -->
			{/if}
			{if (isset($quantity_discounts) && count($quantity_discounts) > 0)}
				<!-- quantity discount -->
				<div class="panel page-product-box">
					<div class="panel-heading">
						<h4 class="page-product-heading">
							<a href="#quantityDiscount" data-parent="#accordion-productinfo" data-toggle="collapse" class="collapsed">{l s='Volume discounts'}</a>
						</h4>
					</div>
					<div id="quantityDiscount" class="panel-collapse collapse">
						<div class="panel-inner">
							<table class="std table-product-discounts">
								<thead>
									<tr>
										<th>{l s='Quantity'}</th>
										<th>{if $display_discount_price}{l s='Price'}{else}{l s='Discount'}{/if}</th>
										<th>{l s='You Save'}</th>
									</tr>
								</thead>
								<tbody>
									{foreach from=$quantity_discounts item='quantity_discount' name='quantity_discounts'}
									<tr id="quantityDiscount_{$quantity_discount.id_product_attribute}" class="quantityDiscount_{$quantity_discount.id_product_attribute}" data-discount-type="{$quantity_discount.reduction_type}" data-discount="{$quantity_discount.real_value|floatval}" data-discount-quantity="{$quantity_discount.quantity|intval}">
										<td>
											{$quantity_discount.quantity|intval}
										</td>
										<td>
											{if $quantity_discount.price >= 0 || $quantity_discount.reduction_type == 'amount'}
												{if $display_discount_price}
													{if $quantity_discount.reduction_tax == 0 && !$quantity_discount.price}
														{convertPrice price = $productPriceWithoutReduction|floatval-($productPriceWithoutReduction*$quantity_discount.reduction_with_tax)|floatval}
													{else}
														{convertPrice price=$productPriceWithoutReduction|floatval-$quantity_discount.real_value|floatval}
													{/if}
												{else}
													{convertPrice price=$quantity_discount.real_value|floatval}
												{/if}
											{else}
												{if $display_discount_price}
													{if $quantity_discount.reduction_tax == 0}
														{convertPrice price = $productPriceWithoutReduction|floatval-($productPriceWithoutReduction*$quantity_discount.reduction_with_tax)|floatval}
													{else}
														{convertPrice price = $productPriceWithoutReduction|floatval-($productPriceWithoutReduction*$quantity_discount.reduction)|floatval}
													{/if}
												{else}
													{$quantity_discount.real_value|floatval}%
												{/if}
											{/if}
										</td>
										<td>
											<span>{l s='Up to'}</span>
											{if $quantity_discount.price >= 0 || $quantity_discount.reduction_type == 'amount'}
												{$discountPrice=$productPriceWithoutReduction|floatval-$quantity_discount.real_value|floatval}
											{else}
												{$discountPrice=$productPriceWithoutReduction|floatval-($productPriceWithoutReduction*$quantity_discount.reduction)|floatval}
											{/if}
											{$discountPrice=$discountPrice * $quantity_discount.quantity}
											{$qtyProductPrice=$productPriceWithoutReduction|floatval * $quantity_discount.quantity}
											{convertPrice price=$qtyProductPrice - $discountPrice}
										</td>
									</tr>
									{/foreach}
								</tbody>
							</table>
						</div>
					</div>
				</div>
			{/if}
			{if isset($features) && $features}
				<!-- Data sheet -->
				<div class="panel page-product-box">
					<div class="panel-heading">
						<h4 class="page-product-heading">
							<a href="#datasheet" data-parent="#accordion-productinfo" data-toggle="collapse" class="collapsed">{l s='Data sheet'}</a>
						</h4>
					</div>
					<div id="datasheet" class="panel-collapse collapse">
						<div class="panel-inner">
							<table class="table-data-sheet">
								{foreach from=$features item=feature}
								<tr class="{cycle values="odd,even"}">
									{if isset($feature.value)}
									<td>{$feature.name|escape:'html':'UTF-8'}</td>
									<td>{$feature.value|escape:'html':'UTF-8'}</td>
									{/if}
								</tr>
								{/foreach}
							</table>
						</div>
					</div>
				</div>
				<!--end Data sheet -->
			{/if}
			<!--HOOK_PRODUCT_TAB -->
			{if isset($HOOK_PRODUCT_TAB_CONTENT) && $HOOK_PRODUCT_TAB_CONTENT}
				<div class="panel page-product-box">
					<div class="panel-heading">
						<h4 class="page-product-heading">
							<a href="#productab" data-parent="#accordion-productinfo" data-toggle="collapse" class="collapsed">
								{$HOOK_PRODUCT_TAB}
							</a>
						</h4>
					</div>
					<div id="productab" class="panel-collapse collapse">	
						<div class="panel-inner">						
							{$HOOK_PRODUCT_TAB_CONTENT}
						</div>
					</div>
				</div>
			{/if}
			<!--end HOOK_PRODUCT_TAB -->
			{if isset($accessories) && $accessories}
				<!--Accessories -->
				<div class="panel page-product-box">
					<div class="panel-heading">
						<h4 class="page-product-heading">
							<a href="#accessories" data-parent="#accordion-productinfo" data-toggle="collapse" class="collapsed">{l s='Accessories'}
							</a>
						</h4>
					</div>
					<div id="accessories" class="panel-collapse collapse">	
						<div class="block panel-inner clearfix">
							<div class="block_content">
								{$tabname="ptsaccessories"}
								{if Configuration::get('PTS_CP_PRODUCTS_ITEMROW')}
									{$columns = Configuration::get('PTS_CP_PRODUCT_ACCROW')}
								{else}
									{$columns = 4}
								{/if}
								{$nbr_desktops = 4}
								{$nbr_tablets = 3}
								{$nbr_mobile = 2}
								{include file="$tpl_dir./sub/products_module.tpl" items=$accessories class="products-block grid {if isset($product_style) && !empty($product_style)}{$product_style}{else}style1{/if}"}
							</div>
						</div>
					</div>
				</div>
				<!--end Accessories -->
			{/if}
			<!-- description & features -->
			{if (isset($product) && $product->description) || (isset($features) && $features) || (isset($accessories) && $accessories) || (isset($HOOK_PRODUCT_TAB) && $HOOK_PRODUCT_TAB) || (isset($attachments) && $attachments) || isset($product) && $product->customizable}
				{if isset($attachments) && $attachments}
				<!--Download -->
				<div class="panel page-product-box">
					<div class="panel-heading">
						<h4 class="page-product-heading">
							<a href="#productdownload" data-parent="#accordion-productinfo" data-toggle="collapse" class="collapsed">{l s='Download'}</a>					
						</h4>
					</div>
					<div id="productdownload" class="panel-collapse collapse">
						<div class="panel-inner">
							{foreach from=$attachments item=attachment name=attachements}
								{if $smarty.foreach.attachements.iteration %3 == 1}<div class="row">{/if}
									<div class="col-lg-4">
										<h4><a href="{$link->getPageLink('attachment', true, NULL, "id_attachment={$attachment.id_attachment}")|escape:'html':'UTF-8'}">{$attachment.name|escape:'html':'UTF-8'}</a></h4>
										<p class="text-muted">{$attachment.description|escape:'html':'UTF-8'}</p>
										<a class="btn btn-default btn-block" href="{$link->getPageLink('attachment', true, NULL, "id_attachment={$attachment.id_attachment}")|escape:'html':'UTF-8'}">
											<i class="icon-download"></i>
											{l s="Download"} ({Tools::formatBytes($attachment.file_size, 2)})
										</a>
										<hr />
									</div>
								{if $smarty.foreach.attachements.iteration %3 == 0 || $smarty.foreach.attachements.last}</div>{/if}
							{/foreach}
						</div>
					</div>
				</div>
				<!--end Download -->
				{/if}
				{if isset($product) && $product->customizable}
				<!--Customization -->
				<div class="panel page-product-box">
					<div class="panel-heading">
						<h4 class="page-product-heading">
							<a href="#customization" data-parent="#accordion-productinfo" data-toggle="collapse" class="collapsed">{l s='Product customization'}</a>					
						</h4>
					</div>
					<div id="customization" class="panel-collapse collapse">
						<div class="panel-inner">
							<!-- Customizable products -->
							<form method="post" action="{$customizationFormTarget}" enctype="multipart/form-data" id="customizationForm" class="clearfix">
								<p class="infoCustomizable">
									{l s='After saving your customized product, remember to add it to your cart.'}
									{if $product->uploadable_files}
									<br />
									{l s='Allowed file formats are: GIF, JPG, PNG'}{/if}
								</p>
								{if $product->uploadable_files|intval}
									<div class="customizableProductsFile">
										<h5 class="product-heading-h5">{l s='Pictures'}</h5>
										<ul id="uploadable_files" class="clearfix">
											{counter start=0 assign='customizationField'}
											{foreach from=$customizationFields item='field' name='customizationFields'}
												{if $field.type == 0}
													<li class="customizationUploadLine{if $field.required} required{/if}">{assign var='key' value='pictures_'|cat:$product->id|cat:'_'|cat:$field.id_customization_field}
														{if isset($pictures.$key)}
															<div class="customizationUploadBrowse">
																<img src="{$pic_dir}{$pictures.$key}_small" alt="" />
																	<a href="{$link->getProductDeletePictureLink($product, $field.id_customization_field)|escape:'html':'UTF-8'}" title="{l s='Delete'}" >
																		<img src="{$img_dir}icon/delete.gif" alt="{l s='Delete'}" class="customization_delete_icon" width="11" height="13" />
																	</a>
															</div>
														{/if}
														<div class="customizationUploadBrowse form-group">
															<label class="customizationUploadBrowseDescription">
																{if !empty($field.name)}
																	{$field.name}
																{else}
																	{l s='Please select an image file from your computer'}
																{/if}
																{if $field.required}<sup>*</sup>{/if}
															</label>
															<input type="file" name="file{$field.id_customization_field}" id="img{$customizationField}" class="form-control customization_block_input {if isset($pictures.$key)}filled{/if}" />
														</div>
													</li>
													{counter}
												{/if}
											{/foreach}
										</ul>
									</div>
								{/if}
								{if $product->text_fields|intval}
									<div class="customizableProductsText">
										<h5 class="product-heading-h5">{l s='Text'}</h5>
										<ul id="text_fields">
										{counter start=0 assign='customizationField'}
										{foreach from=$customizationFields item='field' name='customizationFields'}
											{if $field.type == 1}
												<li class="customizationUploadLine{if $field.required} required{/if}">
													<label for ="textField{$customizationField}">
														{assign var='key' value='textFields_'|cat:$product->id|cat:'_'|cat:$field.id_customization_field}
														{if !empty($field.name)}
															{$field.name}
														{/if}
														{if $field.required}<sup>*</sup>{/if}
													</label>
													<textarea name="textField{$field.id_customization_field}" class="form-control customization_block_input" id="textField{$customizationField}" rows="3" cols="20">{strip}
														{if isset($textFields.$key)}
															{$textFields.$key|stripslashes}
														{/if}
													{/strip}</textarea>
												</li>
												{counter}
											{/if}
										{/foreach}
										</ul>
									</div>
								{/if}
								<p id="customizedDatas">
									<input type="hidden" name="quantityBackup" id="quantityBackup" value="" />
									<input type="hidden" name="submitCustomizedDatas" value="1" />
									<button class="button btn btn-default button button-small" name="saveCustomization">
										<span>{l s='Save'}</span>
									</button>
									<span id="ajax-loader" class="unvisible">
										<img src="{$img_ps_dir}loader.gif" alt="loader" />
									</span>
								</p>
							</form>
							<p class="clear required"><sup>*</sup> {l s='required fields'}</p>
						</div>
					</div>
				</div>
				<!--end Customization -->
				{/if}
			{/if}
			{if isset($DEFAUTL_LANGUAGEID)&&Configuration::get('PTS_CP_ENABLE_PHTML')}
				<div class="panel page-product-box">
					<div class="panel-heading">
						<h4 class="page-product-heading">
							<a href="#producttab-custom" data-parent="#accordion-productinfo" data-toggle="collapse" class="collapsed">{Configuration::get('PTS_CP_PHTMLTAB',$DEFAUTL_LANGUAGEID)}</a>
						</h4>
					</div>
					<div id="producttab-custom" class="panel-collapse collapse">
						<div class="panel-inner">								
			 				{Configuration::get('PTS_CP_PRODUCTHTML',$DEFAUTL_LANGUAGEID)}
						</div>
					</div>
				</div>
			{/if}
		</div>

		{if isset($HOOK_PRODUCT_FOOTER) && $HOOK_PRODUCT_FOOTER}
			{$HOOK_PRODUCT_FOOTER}
		{/if}

		{if isset($packItems) && $packItems|@count > 0}
			<section id="blockpack">
				<h3 class="page-product-heading">{l s='Pack content'}</h3>
				{include file="$tpl_dir./product-list.tpl" products=$packItems}
			</section>
		{/if}
	{/if}

{strip}
{if isset($smarty.get.ad) && $smarty.get.ad}
{addJsDefL name=ad}{$base_dir|cat:$smarty.get.ad|escape:'html':'UTF-8'}{/addJsDefL}
{/if}
{if isset($smarty.get.adtoken) && $smarty.get.adtoken}
{addJsDefL name=adtoken}{$smarty.get.adtoken|escape:'html':'UTF-8'}{/addJsDefL}
{/if}
{addJsDef allowBuyWhenOutOfStock=$allow_oosp|boolval}
{addJsDef availableNowValue=$product->available_now|escape:'quotes':'UTF-8'}
{addJsDef availableLaterValue=$product->available_later|escape:'quotes':'UTF-8'}
{addJsDef attribute_anchor_separator=$attribute_anchor_separator|escape:'quotes':'UTF-8'}
{addJsDef attributesCombinations=$attributesCombinations}
{addJsDef currentDate=$smarty.now|date_format:'%Y-%m-%d %H:%M:%S'}
{if isset($combinations) && $combinations}
	{addJsDef combinations=$combinations}
	{addJsDef combinationsFromController=$combinations}
	{addJsDef displayDiscountPrice=$display_discount_price}
	{addJsDefL name='upToTxt'}{l s='Up to' js=1}{/addJsDefL}
{/if}
{if isset($combinationImages) && $combinationImages}
	{addJsDef combinationImages=$combinationImages}
{/if}
{addJsDef customizationId=$id_customization}
{addJsDef customizationFields=$customizationFields}
{addJsDef default_eco_tax=$product->ecotax|floatval}
{addJsDef displayPrice=$priceDisplay|intval}
{addJsDef ecotaxTax_rate=$ecotaxTax_rate|floatval}
{if isset($cover.id_image_only)}
	{addJsDef idDefaultImage=$cover.id_image_only|intval}
{else}
	{addJsDef idDefaultImage=0}
{/if}
{addJsDef img_ps_dir=$img_ps_dir}
{addJsDef img_prod_dir=$img_prod_dir}
{addJsDef id_product=$product->id|intval}
{addJsDef jqZoomEnabled=$jqZoomEnabled|boolval}
{addJsDef maxQuantityToAllowDisplayOfLastQuantityMessage=$last_qties|intval}
{addJsDef minimalQuantity=$product->minimal_quantity|intval}
{addJsDef noTaxForThisProduct=$no_tax|boolval}
{if isset($customer_group_without_tax)}
	{addJsDef customerGroupWithoutTax=$customer_group_without_tax|boolval}
{else}
	{addJsDef customerGroupWithoutTax=false}
{/if}
{if isset($group_reduction)}
	{addJsDef groupReduction=$group_reduction|floatval}
{else}
	{addJsDef groupReduction=false}
{/if}
{addJsDef oosHookJsCodeFunctions=Array()}
{addJsDef productHasAttributes=isset($groups)|boolval}
{addJsDef productPriceTaxExcluded=($product->getPriceWithoutReduct(true)|default:'null' - $product->ecotax)|floatval}
{addJsDef productPriceTaxIncluded=($product->getPriceWithoutReduct(false)|default:'null' - $product->ecotax)|floatval}
{addJsDef productBasePriceTaxExcluded=($product->getPrice(false, null, 6, null, false, false) - $product->ecotax)|floatval}
{addJsDef productBasePriceTaxExcl=($product->getPrice(false, null, 6, null, false, false)|floatval)}
{addJsDef productBasePriceTaxIncl=($product->getPrice(true, null, 6, null, false, false)|floatval)}
{addJsDef productReference=$product->reference|escape:'html':'UTF-8'}
{addJsDef productAvailableForOrder=$product->available_for_order|boolval}
{addJsDef productPriceWithoutReduction=$productPriceWithoutReduction|floatval}
{addJsDef productPrice=$productPrice|floatval}
{addJsDef productUnitPriceRatio=$product->unit_price_ratio|floatval}
{addJsDef productShowPrice=(!$PS_CATALOG_MODE && $product->show_price)|boolval}
{addJsDef PS_CATALOG_MODE=$PS_CATALOG_MODE}
{addJsDefL name=min_item}{l s='Please select at least one product' js=1}{/addJsDefL}
{addJsDefL name=max_item}{l s='You cannot add more than %d product(s) to the product comparison' sprintf=$comparator_max_item js=1}{/addJsDefL}
{addJsDef comparator_max_item=$comparator_max_item}
{addJsDef comparedProductsIds=$compared_products}
{if $product->specificPrice && $product->specificPrice|@count}
	{addJsDef product_specific_price=$product->specificPrice}
{else}
	{addJsDef product_specific_price=array()}
{/if}
{if $display_qties == 1 && $product->quantity}
	{addJsDef quantityAvailable=$product->quantity}
{else}
	{addJsDef quantityAvailable=0}
{/if}
{addJsDef quantitiesDisplayAllowed=$display_qties|boolval}
{if $product->specificPrice && $product->specificPrice.reduction && $product->specificPrice.reduction_type == 'percentage'}
	{addJsDef reduction_percent=$product->specificPrice.reduction*100|floatval}
{else}
	{addJsDef reduction_percent=0}
{/if}
{if $product->specificPrice && $product->specificPrice.reduction && $product->specificPrice.reduction_type == 'amount'}
	{addJsDef reduction_price=$product->specificPrice.reduction|floatval}
{else}
	{addJsDef reduction_price=0}
{/if}
{if $product->specificPrice && $product->specificPrice.price}
	{addJsDef specific_price=$product->specificPrice.price|floatval}
{else}
	{addJsDef specific_price=0}
{/if}
{addJsDef specific_currency=($product->specificPrice && $product->specificPrice.id_currency)|boolval} {* TODO: remove if always false *}
{addJsDef stock_management=$PS_STOCK_MANAGEMENT|intval}
{addJsDef taxRate=$tax_rate|floatval}
{addJsDefL name=doesntExist}{l s='This combination does not exist for this product. Please select another combination.' js=1}{/addJsDefL}
{addJsDefL name=doesntExistNoMore}{l s='This product is no longer in stock' js=1}{/addJsDefL}
{addJsDefL name=doesntExistNoMoreBut}{l s='with those attributes but is available with others.' js=1}{/addJsDefL}
{addJsDefL name=fieldRequired}{l s='Please fill in all the required fields before saving your customization.' js=1}{/addJsDefL}
{addJsDefL name=uploading_in_progress}{l s='Uploading in progress, please be patient.' js=1}{/addJsDefL}
{addJsDefL name='product_fileDefaultHtml'}{l s='No file selected' js=1}{/addJsDefL}
{addJsDefL name='product_fileButtonHtml'}{l s='Choose File' js=1}{/addJsDefL}

{addJsDefL name='product_detail'}tab-v{/addJsDefL}
{/strip}
{/if}
</div>
