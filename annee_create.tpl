{include file="document_header.tpl"}
			<div id="menu_left">
				<ul id="buttons">
					<li><a href=".." title="Annuler">Annuler</a></li>
				</ul>
			</div>
			<div id="main">
				<h1>Création d'une année</h1>
				<form name="frm_annee_create" action="" method="post">
					<div  id="main_items">
						<table>
							<tr>
								<th><label for="nom">nom{if isset($item_fields[1].constraint) && $item_fields[1].constraint=="NOT NULL"}<span class="required">*</span>{/if} : </label></th>
								<td><input type="text" id="nom" name="nom" value="" maxlength="{$item_fields[1].size}"{if isset($item_fields[1].constraint) && $item_fields[1].constraint=="NOT NULL"} required="required"{/if}></td>
							</tr>
							<tr>
								<th><label for="quotaSeances">quotaSeances{if isset($item_fields[2].constraint) && $item_fields[2].constraint=="NOT NULL"}<span class="required">*</span>{/if} : </label></th>
								<td><input type="text" id="quotaSeances" name="quotaSeances" value="" maxlength="{$item_fields[2].size}"{if isset($item_fields[2].constraint) && $item_fields[2].constraint=="NOT NULL"} required="required"{/if}></td>
							</tr>
							<tr>
								<th><label for="seuilAlerte">seuilAlerte{if isset($item_fields[3].constraint) && $item_fields[3].constraint=="NOT NULL"}<span class="required">*</span>{/if} : </label></th>
								<td><input type="text" id="seuilAlerte" name="seuilAlerte" value="" maxlength="{$item_fields[3].size}"{if isset($item_fields[3].constraint) && $item_fields[3].constraint=="NOT NULL"} required="required"{/if}></td>
							</tr>
							<tr>
								<td colspan="2"><span class="required">* Champ obligatoire</span></td>
							</tr>
						</table>
					</div>
					<div id="main_buttons">
						<input type="submit" name="btn_valider" value="Créer">
						<input type="submit" formaction=".." formnovalidate="formnovalidate" name="btn_annuler" value="Annuler">
					</div>
				</form>
				<script type="text/javascript">
					document.forms["frm_annee_create"].elements["nom"].focus();
					document.forms["frm_annee_create"].elements["nom"].select();
				</script>
			</div>
{include file="document_footer.tpl"}