{**
* @package   Powerful Form Generator
* @author    Cyril Nicodème <contact@prestaddons.net>
* @copyright Copyright (C) June 2014 prestaddons.net <@email:contact@prestaddons.net>. All rights reserved.
* @since     2014-04-15
* @version   2.7.2
* @license   Nicodème Cyril
*}

{extends file='page.tpl'}
{block name='page_content'}
  {hook h='displayPowerfulForm' mod='powerfulformgenerator' id=$idPfg type="url"}
{/block}
