{if isset($swapimage) && is_array($swapimage)}
	<span class="hover-image">
		<a class="img-back product_img_link" href="{$product.link|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" >

			<img class="replace-2x img-responsive pts-image" src="{$link->getImageLink($product.link_rewrite, $swapimage.id_image, 'home_default')|escape:'html':'UTF-8'}" alt="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}" title="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}" {if isset($homeSize)} width="{$homeSize.width}" height="{$homeSize.height}"{/if}   />
		</a>
	</span>	
{/if}