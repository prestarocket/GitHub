<?php /* Smarty version Smarty-3.1.19, created on 2015-11-20 03:21:23
         compiled from "E:\Project\htdocs\pf_fshow_quickstart\themes\pf_fshow\modules\ptsthemepanel\views\templates\hook\swap.tpl" */ ?>
<?php /*%%SmartyHeaderCode:24713564ed803eb71d9-92635877%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fe65a80893a4dbf7e8c0eef95df08d1bd42ed3c2' => 
    array (
      0 => 'E:\\Project\\htdocs\\pf_fshow_quickstart\\themes\\pf_fshow\\modules\\ptsthemepanel\\views\\templates\\hook\\swap.tpl',
      1 => 1447227114,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '24713564ed803eb71d9-92635877',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'swapimage' => 0,
    'product' => 0,
    'link' => 0,
    'homeSize' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_564ed803f30784_21304479',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_564ed803f30784_21304479')) {function content_564ed803f30784_21304479($_smarty_tpl) {?><?php if (isset($_smarty_tpl->tpl_vars['swapimage']->value)&&is_array($_smarty_tpl->tpl_vars['swapimage']->value)) {?>
	<span class="hover-image">
		<a class="img-back product_img_link" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['link'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
" >

			<img class="replace-2x img-responsive pts-image" src="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getImageLink($_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['swapimage']->value['id_image'],'home_default'), ENT_QUOTES, 'UTF-8', true);?>
" alt="<?php if (!empty($_smarty_tpl->tpl_vars['product']->value['legend'])) {?><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['legend'], ENT_QUOTES, 'UTF-8', true);?>
<?php } else { ?><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
<?php }?>" title="<?php if (!empty($_smarty_tpl->tpl_vars['product']->value['legend'])) {?><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['legend'], ENT_QUOTES, 'UTF-8', true);?>
<?php } else { ?><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
<?php }?>" <?php if (isset($_smarty_tpl->tpl_vars['homeSize']->value)) {?> width="<?php echo $_smarty_tpl->tpl_vars['homeSize']->value['width'];?>
" height="<?php echo $_smarty_tpl->tpl_vars['homeSize']->value['height'];?>
"<?php }?>   />
		</a>
	</span>	
<?php }?><?php }} ?>
