<?php /* Smarty version Smarty-3.1.19, created on 2015-12-06 22:15:35
         compiled from "E:\Xampp\htdocs\pf_fshow_quickstart\themes\pf_fshow\modules\pspagebuilder\views\templates\front\widgets\widget_links.tpl" */ ?>
<?php /*%%SmartyHeaderCode:127165664f9d75f2894-38622898%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ac831c2bb3233ac91bc45d3671faade8b76af5a8' => 
    array (
      0 => 'E:\\Xampp\\htdocs\\pf_fshow_quickstart\\themes\\pf_fshow\\modules\\pspagebuilder\\views\\templates\\front\\widgets\\widget_links.tpl',
      1 => 1447227090,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '127165664f9d75f2894-38622898',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'links' => 0,
    'addition_cls' => 0,
    'stylecls' => 0,
    'widget_heading' => 0,
    'id' => 0,
    'ac' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_5664f9d7647875_84745491',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5664f9d7647875_84745491')) {function content_5664f9d7647875_84745491($_smarty_tpl) {?>
<?php if (isset($_smarty_tpl->tpl_vars['links']->value)) {?>
<div class="widget-links block <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['addition_cls']->value, ENT_QUOTES, 'UTF-8', true);?>
 <?php if (isset($_smarty_tpl->tpl_vars['stylecls']->value)&&$_smarty_tpl->tpl_vars['stylecls']->value) {?>block-<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['stylecls']->value, ENT_QUOTES, 'UTF-8', true);?>
<?php }?>">
	<?php if (isset($_smarty_tpl->tpl_vars['widget_heading']->value)&&!empty($_smarty_tpl->tpl_vars['widget_heading']->value)) {?>
	<h4 class="title_block">
		<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['widget_heading']->value, ENT_QUOTES, 'UTF-8', true);?>

	</h4>
	<?php }?>
	<div class="widget-inner block_content">	
		<div id="tabs<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['id']->value, ENT_QUOTES, 'UTF-8', true);?>
" class="panel-group">
			
			<ul class="nav-links">
			  <?php  $_smarty_tpl->tpl_vars['ac'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ac']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['links']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ac']->key => $_smarty_tpl->tpl_vars['ac']->value) {
$_smarty_tpl->tpl_vars['ac']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['ac']->key;
?>  
			  <li ><a href="<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['ac']->value['link'], ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
" ><?php echo $_smarty_tpl->tpl_vars['ac']->value['text'];?>
</a></li>
			  <?php } ?>
			</ul>

	</div></div>
</div>
<?php }?>


<?php }} ?>
