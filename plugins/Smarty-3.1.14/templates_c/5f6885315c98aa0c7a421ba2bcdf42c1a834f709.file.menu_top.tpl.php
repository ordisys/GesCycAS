<?php /* Smarty version Smarty-3.1.14, created on 2013-12-05 09:18:14
         compiled from "view\templates\menu_top.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2508252a0300aebbcf4-21798681%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5f6885315c98aa0c7a421ba2bcdf42c1a834f709' => 
    array (
      0 => 'view\\templates\\menu_top.tpl',
      1 => 1386231416,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2508252a0300aebbcf4-21798681',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52a0300af28e86_38186303',
  'variables' => 
  array (
    'URI_root' => 0,
    'connected' => 0,
    'droits' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52a0300af28e86_38186303')) {function content_52a0300af28e86_38186303($_smarty_tpl) {?>			<div id="menu_top">
				<ul id="buttons">
					<li><a href="<?php echo $_smarty_tpl->tpl_vars['URI_root']->value;?>
" title="Accueil">Accueil</a></li>
<?php if (isset($_smarty_tpl->tpl_vars['connected']->value)&&!$_smarty_tpl->tpl_vars['connected']->value){?>
					<li><a href="<?php echo $_smarty_tpl->tpl_vars['URI_root']->value;?>
/Session/open" title="Connexion">Connexion</a></li>
<?php }?>
<?php if (isset($_smarty_tpl->tpl_vars['connected']->value)&&$_smarty_tpl->tpl_vars['connected']->value){?>
					<li><a href="<?php echo $_smarty_tpl->tpl_vars['URI_root']->value;?>
/Session/open" title="Déconnexion">Déconnexion</a></li>
<?php }?>
<?php if (in_array('Utilisateur::default',$_smarty_tpl->tpl_vars['droits']->value)){?>
					<li><a href="<?php echo $_smarty_tpl->tpl_vars['URI_root']->value;?>
/Utilisateur/" title="Utilisateur">Utilisateurs</a></li>
<?php }?>
<?php if (in_array('Groupe::default',$_smarty_tpl->tpl_vars['droits']->value)){?>
					<li><a href="<?php echo $_smarty_tpl->tpl_vars['URI_root']->value;?>
/Groupe/" title="Groupes">Groupes</a></li>
<?php }?>
<?php if (in_array('Affectation::default',$_smarty_tpl->tpl_vars['droits']->value)){?>
					<li><a href="<?php echo $_smarty_tpl->tpl_vars['URI_root']->value;?>
/Affectation/" title="Affectations">Affectations</a></li>
<?php }?>
<?php if (in_array('Droit::default',$_smarty_tpl->tpl_vars['droits']->value)){?>
					<li><a href="<?php echo $_smarty_tpl->tpl_vars['URI_root']->value;?>
/Droit/" title="Droits">Droits</a></li>
<?php }?>
<?php if (in_array('Attribution::default',$_smarty_tpl->tpl_vars['droits']->value)){?>
					<li><a href="<?php echo $_smarty_tpl->tpl_vars['URI_root']->value;?>
/Attribution/" title="Attributions">Attributions</a></li>
<?php }?>
<?php if (in_array('Session::default',$_smarty_tpl->tpl_vars['droits']->value)){?>
					<li><a href="<?php echo $_smarty_tpl->tpl_vars['URI_root']->value;?>
/Session/" title="Sessions">Sessions</a></li>
<?php }?>
<?php if (in_array('Tentative::default',$_smarty_tpl->tpl_vars['droits']->value)){?>
					<li><a href="<?php echo $_smarty_tpl->tpl_vars['URI_root']->value;?>
/Tentative/" title="Tentatives">Tentatives</a></li>
<?php }?>
<?php if (in_array('Activite::default',$_smarty_tpl->tpl_vars['droits']->value)){?>
					<li><a href="<?php echo $_smarty_tpl->tpl_vars['URI_root']->value;?>
/Activite/" title="Activite">Activite</a></li>
<?php }?>
				</ul>
			</div><?php }} ?>