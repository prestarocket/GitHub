<?php /* Smarty version Smarty-3.1.19, created on 2015-11-20 03:21:27
         compiled from "E:\Project\htdocs\pf_fshow_quickstart\themes\pf_fshow\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:25975564ed8076ed250-97138370%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fe4e8cbd5770a7adffb706c8d4b738eb64169504' => 
    array (
      0 => 'E:\\Project\\htdocs\\pf_fshow_quickstart\\themes\\pf_fshow\\index.tpl',
      1 => 1447227016,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '25975564ed8076ed250-97138370',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'PTS_PAGEBUILDER_ACTIVED' => 0,
    'PTS_PAGEBUILDER_FULL' => 0,
    'HOOK_HOME_TAB_CONTENT' => 0,
    'HOOK_HOME_TAB' => 0,
    'HOOK_HOME' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_564ed8077581a1_68785824',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_564ed8077581a1_68785824')) {function content_564ed8077581a1_68785824($_smarty_tpl) {?>
<?php if (Configuration::get('PTS_CP_ENABLE_PBUILDER')&&isset($_smarty_tpl->tpl_vars['PTS_PAGEBUILDER_ACTIVED']->value)&&$_smarty_tpl->tpl_vars['PTS_PAGEBUILDER_ACTIVED']->value&&$_smarty_tpl->tpl_vars['PTS_PAGEBUILDER_FULL']->value) {?>
<?php } else { ?>
	<?php if (isset($_smarty_tpl->tpl_vars['HOOK_HOME_TAB_CONTENT']->value)&&trim($_smarty_tpl->tpl_vars['HOOK_HOME_TAB_CONTENT']->value)) {?>
	    <?php if (isset($_smarty_tpl->tpl_vars['HOOK_HOME_TAB']->value)&&trim($_smarty_tpl->tpl_vars['HOOK_HOME_TAB']->value)) {?>
		<div class="block producttabs">
			<div class="tab-nav">
				<ul id="home-page-tabs" class="nav nav-theme sclearfix">
					<?php echo $_smarty_tpl->tpl_vars['HOOK_HOME_TAB']->value;?>

				</ul>
			</div>
		</div>		
		<?php }?>
		<div class="tab-content">
			<?php echo $_smarty_tpl->tpl_vars['HOOK_HOME_TAB_CONTENT']->value;?>

		</div>
	<?php }?>
	<?php if (isset($_smarty_tpl->tpl_vars['HOOK_HOME']->value)&&trim($_smarty_tpl->tpl_vars['HOOK_HOME']->value)) {?>
		<div class="clearfix">
			<?php echo $_smarty_tpl->tpl_vars['HOOK_HOME']->value;?>

		</div>
	<?php }?>
<?php }?><?php }} ?>
