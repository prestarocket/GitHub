<?php /* Smarty version Smarty-3.1.19, created on 2015-11-20 03:53:50
         compiled from "E:\Project\htdocs\pf_fshow_quickstart\themes\pf_fshow\modules\ptsbttestimonials\views\templates\hook\list.tpl" */ ?>
<?php /*%%SmartyHeaderCode:5363564edf9ece4101-79928418%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '76d08ec1bb4c7a55f530b459acc34ba35d10c23e' => 
    array (
      0 => 'E:\\Project\\htdocs\\pf_fshow_quickstart\\themes\\pf_fshow\\modules\\ptsbttestimonials\\views\\templates\\hook\\list.tpl',
      1 => 1448008758,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '5363564edf9ece4101-79928418',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
    'tests' => 0,
    'test' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_564edfa000e462_90678401',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_564edfa000e462_90678401')) {function content_564edfa000e462_90678401($_smarty_tpl) {?>
<div class="panel">
	<h3><i class="icon-list-ul"></i> <?php echo smartyTranslate(array('s'=>'Testimonials list','mod'=>'ptsbttestimonials'),$_smarty_tpl);?>

		<span class="panel-heading-action">
			<a id="desc-product-new" class="list-toolbar-btn"
	           href="<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getAdminLink('AdminModules'), ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
&configure=ptsbttestimonials&addTest=1">
	            <label>
	                <span title="" data-toggle="tooltip" class="label-tooltip" data-original-title="<?php echo smartyTranslate(array('s'=>'Add new','mod'=>'ptsbttestimonials'),$_smarty_tpl);?>
"
	                      data-html="true">
	                    <i class="process-icon-new "></i>
	                </span>
	            </label>
	        </a>
		</span>
	</h3>

    <div id="testsContent" style="width: 400px; margin-top: 30px;">
        <ul id="tests">
        	<?php  $_smarty_tpl->tpl_vars['test'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['test']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['tests']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['test']->key => $_smarty_tpl->tpl_vars['test']->value) {
$_smarty_tpl->tpl_vars['test']->_loop = true;
?>
                <li id="tests_<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['test']->value['id_test'], ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
">
                    <strong>#<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['test']->value['id_test'], ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
</strong> <?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['test']->value['name'], ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>

                    <p style="float: right">
                        <?php echo $_smarty_tpl->tpl_vars['test']->value['status'];?>

                        <a class="btn btn-primary"
                           href="<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getAdminLink('AdminModules'), ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
&configure=ptsbttestimonials&id_test=<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['test']->value['id_test'], ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
"> <?php echo smartyTranslate(array('s'=>'Edit','mod'=>'ptsbttestimonials'),$_smarty_tpl);?>
</a>
                        <a class="btn btn-danger"
                           href="<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getAdminLink('AdminModules'), ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
&configure=ptsbttestimonials&delete_id_test=<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['test']->value['id_test'], ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
"> <?php echo smartyTranslate(array('s'=>'Delete','mod'=>'ptsbttestimonials'),$_smarty_tpl);?>
</a>
                    </p>
                </li>
            <?php } ?>
        </ul>
    </div>
</div><?php }} ?>
