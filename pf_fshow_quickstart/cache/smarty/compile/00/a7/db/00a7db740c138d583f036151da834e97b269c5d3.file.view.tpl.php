<?php /* Smarty version Smarty-3.1.19, created on 2015-11-22 21:18:42
         compiled from "E:\Project\htdocs\pf_fshow_quickstart\admin123\themes\default\template\controllers\backup\helpers\view\view.tpl" */ ?>
<?php /*%%SmartyHeaderCode:5136565277824d3855-49704052%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '00a7db740c138d583f036151da834e97b269c5d3' => 
    array (
      0 => 'E:\\Project\\htdocs\\pf_fshow_quickstart\\admin123\\themes\\default\\template\\controllers\\backup\\helpers\\view\\view.tpl',
      1 => 1447226150,
      2 => 'file',
    ),
    '0b8c0154fd8ce8c36b1468374a9c01376b0e59fa' => 
    array (
      0 => 'E:\\Project\\htdocs\\pf_fshow_quickstart\\admin123\\themes\\default\\template\\helpers\\view\\view.tpl',
      1 => 1447226176,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '5136565277824d3855-49704052',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'name_controller' => 0,
    'hookName' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_565277825da337_64886045',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_565277825da337_64886045')) {function content_565277825da337_64886045($_smarty_tpl) {?>

<div class="leadin"></div>


	<?php if (!isset($_smarty_tpl->tpl_vars['errors']->value)||count($_smarty_tpl->tpl_vars['errors']->value)==0) {?>
	<div class="panel">
		<h3><i class="icon-download"></i> <?php echo smartyTranslate(array('s'=>'Download'),$_smarty_tpl);?>
</h3>
		<div class="alert alert-success"><?php echo smartyTranslate(array('s'=>'Beginning the download ...'),$_smarty_tpl);?>
</div>
		<p><?php echo smartyTranslate(array('s'=>'Backup files should automatically start downloading.'),$_smarty_tpl);?>
</p>
		<p><?php echo smartyTranslate(array('s'=>'If not,'),$_smarty_tpl);?>
 <b><a href="<?php echo $_smarty_tpl->tpl_vars['url_backup']->value;?>
" class="btn btn-default"><i class="icon-download"></i> <?php echo smartyTranslate(array('s'=>'please click here!'),$_smarty_tpl);?>
</a></b></p>
		<iframe  style="width:0px; height:0px; overflow:hidden; border:none;" src="<?php echo $_smarty_tpl->tpl_vars['url_backup']->value;?>
"></iframe>
	</div>
	<?php }?>


<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['hook'][0][0]->smartyHook(array('h'=>'displayAdminView'),$_smarty_tpl);?>

<?php if (isset($_smarty_tpl->tpl_vars['name_controller']->value)) {?>
	<?php $_smarty_tpl->_capture_stack[0][] = array('hookName', 'hookName', null); ob_start(); ?>display<?php echo ucfirst($_smarty_tpl->tpl_vars['name_controller']->value);?>
View<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['hook'][0][0]->smartyHook(array('h'=>$_smarty_tpl->tpl_vars['hookName']->value),$_smarty_tpl);?>

<?php } elseif (isset($_GET['controller'])) {?>
	<?php $_smarty_tpl->_capture_stack[0][] = array('hookName', 'hookName', null); ob_start(); ?>display<?php echo htmlentities(ucfirst($_GET['controller']));?>
View<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['hook'][0][0]->smartyHook(array('h'=>$_smarty_tpl->tpl_vars['hookName']->value),$_smarty_tpl);?>

<?php }?>
<?php }} ?>
