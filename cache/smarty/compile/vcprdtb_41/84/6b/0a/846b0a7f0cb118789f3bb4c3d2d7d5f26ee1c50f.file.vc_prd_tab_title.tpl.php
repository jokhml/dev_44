<?php /* Smarty version Smarty-3.1.19, created on 2017-09-21 10:48:17
         compiled from "/var/www/44.dev.dfx.fr/www/modules/jscomposer/views/templates/front/vc_prd_tab_title.tpl" */ ?>
<?php /*%%SmartyHeaderCode:31357069259c37cd1348625-51224743%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '846b0a7f0cb118789f3bb4c3d2d7d5f26ee1c50f' => 
    array (
      0 => '/var/www/44.dev.dfx.fr/www/modules/jscomposer/views/templates/front/vc_prd_tab_title.tpl',
      1 => 1486952238,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '31357069259c37cd1348625-51224743',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'vc_tab_title_results' => 0,
    'vc_tab_title' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_59c37cd1351c51_50301178',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_59c37cd1351c51_50301178')) {function content_59c37cd1351c51_50301178($_smarty_tpl) {?><?php if (isset($_smarty_tpl->tpl_vars['vc_tab_title_results']->value)&&!empty($_smarty_tpl->tpl_vars['vc_tab_title_results']->value)) {?>
	<?php  $_smarty_tpl->tpl_vars["vc_tab_title"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["vc_tab_title"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['vc_tab_title_results']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["vc_tab_title"]->key => $_smarty_tpl->tpl_vars["vc_tab_title"]->value) {
$_smarty_tpl->tpl_vars["vc_tab_title"]->_loop = true;
?>
		<?php if ($_smarty_tpl->tpl_vars['vc_tab_title']->value['title']!='') {?>
			
				<li><a href="#vc-tab-<?php echo $_smarty_tpl->tpl_vars['vc_tab_title']->value['id_vcproducttabcreator'];?>
" role="tab" data-toggle="tab"><?php echo $_smarty_tpl->tpl_vars['vc_tab_title']->value['title'];?>
</a></li>
			
		<?php }?>
	<?php } ?>
<?php }?>

<?php }} ?>