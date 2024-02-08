<?php
/* Smarty version 4.3.4, created on 2024-02-02 19:01:37
  from '/var/www/html/content/themes/default/templates/__reaction_emojis.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.4',
  'unifunc' => 'content_65bd3c11481722_45014527',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ea03386a9a257e0832802a7755834c4e5c3179d8' => 
    array (
      0 => '/var/www/html/content/themes/default/templates/__reaction_emojis.tpl',
      1 => 1667428218,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65bd3c11481722_45014527 (Smarty_Internal_Template $_smarty_tpl) {
?><!-- reaction -->
<div class="emoji">
  <img src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_uploads'];?>
/<?php echo $_smarty_tpl->tpl_vars['reactions']->value[$_smarty_tpl->tpl_vars['_reaction']->value]['image'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['reactions']->value[$_smarty_tpl->tpl_vars['_reaction']->value]['title'];?>
" />
</div>
<!-- reaction --><?php }
}
