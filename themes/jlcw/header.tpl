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
<!DOCTYPE HTML>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<html{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}>
    <head>
        <meta charset="utf-8" />
        <title>{$meta_title|escape:'html':'UTF-8'}</title>
        {if isset($meta_description) AND $meta_description}
            <meta name="description" content="{$meta_description|escape:'html':'UTF-8'}" />
        {/if}
        {if isset($meta_keywords) AND $meta_keywords}
            <meta name="keywords" content="{$meta_keywords|escape:'html':'UTF-8'}" />
        {/if}
        <meta name="generator" content="PrestaShop" />
        <meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
        <meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
        <link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />
        {if isset($css_files)}
            {foreach from=$css_files key=css_uri item=media}
                {if $css_uri == 'lteIE9'}
                    <!--[if lte IE 9]>
                    {foreach from=$css_files[$css_uri] key=css_uriie9 item=mediaie9}
                    <link rel="stylesheet" href="{$css_uriie9|escape:'html':'UTF-8'}" type="text/css" media="{$mediaie9|escape:'html':'UTF-8'}" />
                    {/foreach}
                    <![endif]-->
                {else}
                    <link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet">
                    <link rel="stylesheet" href="{$css_uri|escape:'html':'UTF-8'}" type="text/css" media="{$media|escape:'html':'UTF-8'}" />
                {/if}
            {/foreach}
        {/if}
        {if isset($js_defer) && !$js_defer && isset($js_files) && isset($js_def)}
            {$js_def}
            {foreach from=$js_files item=js_uri}
                <script type="text/javascript" src="{$js_uri|escape:'html':'UTF-8'}"></script>
            {/foreach}
            <script type="text/javascript" src="{$js_dir}custom.js"></script>

        {/if}
        {$HOOK_HEADER}
        <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:300,600&amp;subset=latin,latin-ext" type="text/css" media="all" />
        <link rel="stylesheet" href="{$css_dir}jlcw.css" type="text/css" />

        <!--[if IE 8]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>



    {if isset($category)}
        {$CatName = 'category-'}        
        {$body_classes[] = $CatName|cat:$category->id_parent}
    {/if}

    <body{if isset($page_name)} id="{$page_name|escape:'html':'UTF-8'}"{/if} class="{if isset($page_name)}{$page_name|escape:'html':'UTF-8'}{/if}{if isset($body_classes) && $body_classes|@count} {implode value=$body_classes separator=' '}{/if}{if $hide_left_column} hide-left-column{else} show-left-column{/if}{if $hide_right_column} hide-right-column{else} show-right-column{/if}{if isset($content_only) && $content_only} content_only{/if} lang_{$lang_iso}">
        {if !isset($content_only) || !$content_only}
            {if isset($restricted_country_mode) && $restricted_country_mode}
                <div id="restricted-country">
                    <p>{l s='You cannot place a new order from your country.'}{if isset($geolocation_country) && $geolocation_country} <span class="bold">{$geolocation_country|escape:'html':'UTF-8'}</span>{/if}</p>
                </div>
            {/if}
            <div id="page">
                <div class="header-container">
                    <header id="header">
                    {capture name='displayBanner'}{hook h='displayBanner'}{/capture}
                    {if $smarty.capture.displayBanner}
                        <div class="banner">
                            <div class="container">
                                <div class="row">
                                    {$smarty.capture.displayBanner}
                                </div>
                            </div>
                        </div>
                    {/if}
                {capture name='displayNav'}{hook h='displayNav'}{/capture}
                {*					{if $smarty.capture.displayNav}
                <div class="nav">
                <div class="container">
                <div class="row">
                <nav>{$smarty.capture.displayNav}</nav>
                </div>
                </div>
                </div>
                {/if}*}
                <div>
                    {*                                            <div class="row">
                    <div id="header_logo">
                    <a href="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}" title="{$shop_name|escape:'html':'UTF-8'}">
                    <img class="logo img-responsive" src="/themes/jlcw/img/logo.png" alt="{$shop_name|escape:'html':'UTF-8'}"{if isset($logo_image_width) && $logo_image_width} width="{$logo_image_width}"{/if}{if isset($logo_image_height) && $logo_image_height} height="{$logo_image_height}"{/if}/>
                    </a>
                    </div>
                    {if isset($HOOK_TOP)}{$HOOK_TOP}{/if}
                    </div>*}
                    {if $page_name =='index'}
                        <div id="home_header_info_container">
                            <div id="home_header_info" class="container">
                                <div class="row">
                                    {*<div id="header_logo">
                                    <a href="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}" title="{$shop_name|escape:'html':'UTF-8'}">
                                    <img class="logo img-responsive" src="/themes/jlcw/img/logo.png" alt="{$shop_name|escape:'html':'UTF-8'}"{if isset($logo_image_width) && $logo_image_width} width="{$logo_image_width}"{/if}{if isset($logo_image_height) && $logo_image_height} height="{$logo_image_height}"{/if}/>
                                    </a>
                                    </div>*}
                                {if isset($HOOK_TOP)}{$HOOK_TOP}{/if}
                                {hook h='displayCustomMenu'}
                            </div>
                        </div>
                    </div>
                    {hook h='home_slider'}
                    <div id="reassurance" class="row">
                        <div class="">
                            <div id="made_fr"><img src="/themes/jlcw/img/france.png" /><div class="reassurance_content"><span class="reassurance_heading">Conception Fran&ccedil;aise</span><span class="reassurance_subheading">NOS PRODUITS SONT &Eacute;LABOR&Eacute;S EN FRANCE</span></div></div>
                            <div id="innovation"><img src="/themes/jlcw/img/expertise.png" /><div class="reassurance_content"><span class="reassurance_heading">INNOVATION</span><span class="reassurance_subheading">UN CHALLENGE QUOTIDIEN</span></div></div>
                            <div id="expert"><img src="/themes/jlcw/img/pouce.png" /><div class="reassurance_content"><span class="reassurance_heading">EXPERTISE TEXTILE</span><span class="reassurance_subheading">SOURCING, PRODUCTION, CONFECTION</span></div></div>
                            <div id="livraison"><img src="/themes/jlcw/img/medal.png" /><div class="reassurance_content"><span class="reassurance_heading">QUALIT&Eacute;</span><span class="reassurance_subheading">NOTRE OBJECTIF : LA QUALIT&Eacute;</span></div></div>
                        </div>
                    </div>
                {else if}
                    <div id="home_header_info_no_index_container">
                        <div class="row">
                            <div class="container">
                                <div id="header_infos_left">
                                    <div id="header_contact_adress"><p><i class="icon-map-marker"></i>15 chemin du plateau 69570 DARDILLY</p></div>
                                                {*                                                                <div id="header_contact_mail"><a href="mailto:"><i class="icon-envelope"></i></a></div>
                                                *}                                                            </div>
                                {if isset($HOOK_TOP)}{$HOOK_TOP}{/if}
                            <div id="header_infos_right">
                                <div id="header_contact_tel"><a href="tel:+33478809791"><i class="icon-phone"></i>04 78 80 97 91</a></div>
                            </div>
                        </div>
                    </div>
                    <div id="header_logo_no_index">
                        <a href="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}" title="{$shop_name|escape:'html':'UTF-8'}">
                            <img class="logo img-responsive" src="/themes/jlcw/img/logo-big.png" alt="{$shop_name|escape:'html':'UTF-8'}"{if isset($logo_image_width) && $logo_image_width} width="{$logo_image_width}"{/if}{if isset($logo_image_height) && $logo_image_height} height="{$logo_image_height}"{/if}/>
                        </a>
                    </div>
                </div>
                <div id="home_header_info_no_index">
                    {hook h='displayCustomMenu'}
                </div>
                {if $page_name == 'product'}
                    <div id="reassurance" class="row">
                        <div class="">
                            <div id="made_fr"><img src="/themes/jlcw/img/france.png" /><div class="reassurance_content"><span class="reassurance_heading">Conception Fran&ccedil;aise</span><span class="reassurance_subheading">NOS PRODUITS SONT &Eacute;LABOR&Eacute;S EN FRANCE</span></div></div>
                            <div id="innovation"><img src="/themes/jlcw/img/expertise.png" /><div class="reassurance_content"><span class="reassurance_heading">INNOVATION</span><span class="reassurance_subheading">UN CHALLENGE QUOTIDIEN</span></div></div>
                            <div id="expert"><img src="/themes/jlcw/img/pouce.png" /><div class="reassurance_content"><span class="reassurance_heading">EXPERTISE TEXTILE</span><span class="reassurance_subheading">SOURCING, PRODUCTION, CONFECTION</span></div></div>
                            <div id="livraison"><img src="/themes/jlcw/img/medal.png" /><div class="reassurance_content"><span class="reassurance_heading">QUALIT&Eacute;</span><span class="reassurance_subheading">NOTRE OBJECTIF : LA QUALIT&Eacute;</span></div></div>
                        </div>
                    </div>
                {/if}
            {/if}
        </div>
</div>
</header>
</div>
<div class="columns-container">
    <div id="columns" {if $page_name != 'index'} {*&& $page_name != 'cms'*} class="container" {/if}>
        {if $page_name !='index' && $page_name !='pagenotfound'}
            {include file="$tpl_dir./breadcrumb.tpl"}
        {/if}
        <div id="slider_row" class="row">
        {capture name='displayTopColumn'}{hook h='displayTopColumn'}{/capture}
        {if $smarty.capture.displayTopColumn}
            <div id="top_column" class="center_column col-xs-12 col-sm-12">{$smarty.capture.displayTopColumn}</div>
        {/if}
    </div>
    <div class="row">
        {if isset($left_column_size) && !empty($left_column_size)}
            <div id="left_column" class="column col-xs-12 col-sm-{$left_column_size|intval}">{$HOOK_LEFT_COLUMN}</div>
        {/if}
{if isset($left_column_size) && isset($right_column_size)}{assign var='cols' value=(12 - $left_column_size - $right_column_size)}{else}{assign var='cols' value=12}{/if}
<div id="center_column" class="center_column col-xs-12 col-sm-{$cols|intval}">
{/if}
