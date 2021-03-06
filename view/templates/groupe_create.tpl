{include file="document_header.tpl"}
			<div id="menu_left">
				<ul id="buttons">
					<li><a href=".." title="Annuler">Annuler</a></li>
				</ul>
			</div>
			<div id="main">
				<h1>Création d'un Groupe</h1>
				<form name="frm_groupe_create" action="" method="post">
					<div  id="main_items">
						<table>
							<tr>
								<th><label for="nom">nom{if isset($item_fields[1].constraint) && $item_fields[1].constraint=="NOT NULL"}<span class="required">*</span>{/if} : </label></th>
								<td><input type="text" id="nom" name="nom" value="" maxlength="{$item_fields[1].size}"{if isset($item_fields[1].constraint) && $item_fields[1].constraint=="NOT NULL"} required="required"{/if}></td>
							</tr>
							<tr>
								<td colspan="2"><span class="required">* Champ obligatoire</span></td>
							</tr>
						</table>
					</div>
					<div id="main_links">
{if in_array('Affectation::default',$droits)}
						<table>
							<tr>
								<td>
									<fieldset style="margin-top:-7px;">
										<legend>Affectations</legend>
										<table>
{section name=utl_list loop=$linked_items}
											<tr>
												<td>
													<input type="checkbox" id="affectation_utl_{$linked_items[utl_list].id}_grp_last" name="affectation_utl_{$linked_items[utl_list].id}_grp_last"{if ! in_array('Affectation::update',$droits)} disabled="disabled"{/if}>
													<label for="affectation_utl_{$linked_items[utl_list].id}_grp_last">&nbsp;{$linked_items[utl_list].login} (<span style="font-style:italic;">{$linked_items[utl_list].prenom} {$linked_items[utl_list].nom}</span>)</label>
												</td>
											</tr>
{/section}
										</table>
									</fieldset>
								</td>
							</tr>
						</table>
{/if}
					</div>
					<div id="main_buttons">
						<input type="submit" name="btn_valider" value="Créer">
						<input type="submit" formaction=".." formnovalidate="formnovalidate" name="btn_annuler" value="Annuler">
					</div>
				</form>
				<script type="text/javascript">
					document.forms["frm_groupe_create"].elements["nom"].focus();
					document.forms["frm_groupe_create"].elements["nom"].select();
				</script>
			</div>
{include file="document_footer.tpl"}
