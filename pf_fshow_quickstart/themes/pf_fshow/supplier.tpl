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

{if !isset($errors) OR !sizeof($errors)}
	<h1 class="page-heading product-listing">
		{l s='List of products by supplier:'}&nbsp;{$supplier->name|escape:'html':'UTF-8'}
	</h1>
	{if !empty($supplier->description)}
		<div class="description_box rte">
			<p>{$supplier->description}</p>
		</div>
	{/if}

	{if $products}
    	<div class="content_sortPagiBar product-filter clearfix">
            <div class="row">
                <div class="sortPagiBar col-lg-7 col-md-7 col-sm-7">
                    {include file="./product-sort.tpl"}
                    {include file="./product-compare.tpl"}
                </div>
                <div class="hidden-xs hidden-sm hidden-md hidden-lg">{include file="./nbr-product-page.tpl"}</div><!-- error pagination -->
                <div class="top-pagination-content col-lg-5 col-md-5 col-sm-5">
                    <div class="product-count">
                        {if ($n*$p) < $nb_products }
                            {assign var='productShowing' value=$n*$p}
                        {else}
                            {assign var='productShowing' value=($n*$p-$nb_products-$n*$p)*-1}
                        {/if}
                        {if $p==1}
                            {assign var='productShowingStart' value=1}
                        {else}
                            {assign var='productShowingStart' value=$n*$p-$n+1}
                        {/if}
                        {if $nb_products > 1}
                            {l s='Showing %1$d - %2$d of %3$d items' sprintf=[$productShowingStart, $productShowing, $nb_products]}
                        {else}
                            {l s='Showing %1$d - %2$d of 1 item' sprintf=[$productShowingStart, $productShowing]}
                        {/if}
                    </div>
                </div>
            </div>
        </div>
        {include file="./product-list.tpl" products=$products}
        <div class="bottom-pagination-content content_sortPagiBar clearfix">
             {include file="./pagination.tpl" paginationId='bottom'}
        </div>
	{else}
		<p class="alert alert-warning">{l s='No products for this supplier.'}</p>
	{/if} 
{/if}
