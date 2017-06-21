{debug}
{*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if isset($HOOK_HOME_TAB_CONTENT) && $HOOK_HOME_TAB_CONTENT|trim}
    {if isset($HOOK_HOME_TAB) && $HOOK_HOME_TAB|trim}
        <ul id="home-page-tabs" class="nav nav-tabs clearfix">
			{$HOOK_HOME_TAB}
		</ul>
	{/if}
{/if}
{if $cart_qties > 5}
<h2>trans gratuit</h2>
{else}
<h2>plus de 5 produit trans gratuit</h2>
{/if}
<div class="tab-content">{$HOOK_HOME_TAB_CONTENT}</div>
{$meta_title}
<p>{l s='Hello'}</p>
<p>{l s='Date'}: {$smarty.now|date_format:"%b %e, %Y"}</p>
<p>{l|truncate:30 s='Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'}</p>

{if isset($HOOK_HOME) && $HOOK_HOME|trim}
	<div class="clearfix">{$HOOK_HOME}</div>
{/if}
