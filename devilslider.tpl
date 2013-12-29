{*
* 2007-2013 PrestaShop
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
*  @copyright  2007-2013 PrestaShop SA
*  @version  Release: $Revision$
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<!-- Module devilslider -->
{if isset($devilslider)}
<script type="text/javascript">
{if isset($devilslider_slides) && $devilslider_slides|@count > 1}
	{if $devilslider.loop == 1}
		var devilslider_loop = true;
	{else}
		var devilslider_loop = false;
	{/if}
{else}
	var devilslider_loop = false;
{/if}
var devilslider_speed = {$devilslider.speed};
var devilslider_pause = {$devilslider.pause};

  $(window).load(function() {
       $('#slider').nivoSlider({
    effect: 'boxRainGrowReverse',               // sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft, fold, fade, random, slideInRight, slideInLeft, boxRandom, boxRain, boxRainReverse, boxRainGrow,  boxRainGrowReverse
    slices: 15,                     // For slice animations
    boxCols: 8,                     // For box animations
    boxRows: 4,                     // For box animations
    animSpeed: devilslider_speed,                 // Slide transition speed
    pauseTime: devilslider_pause,                // How long each slide will show
    startSlide: 0,                  // Set starting Slide (0 index)
    directionNav: true,             // Next & Prev navigation
    controlNav: true,               // 1,2,3... navigation
    controlNavThumbs: false,        // Use thumbnails for Control Nav
    pauseOnHover: true,             // Stop animation while hovering
    manualAdvance: false,           // Force manual transitions
    prevText: 'Prev',               // Prev directionNav text
    nextText: 'Next',               // Next directionNav text
    randomStart: false,             // Start on a random slide
    beforeChange: function(){},     // Triggers before a slide transition
    afterChange: function(){},      // Triggers after a slide transition
    slideshowEnd: function(){},     // Triggers after all slides have been shown
    lastSlide: function(){},        // Triggers when last slide is shown
    afterLoad: function(){}         // Triggers when slider has loaded
});
    });


</script>
{/if}
{if isset($devilslider_slides)}

<div class="row">

<div class="slider-wrapper theme-default col-md-8">
            <div id="slider" class="nivoSlider">
{foreach from=$devilslider_slides item=slide}
	{if $slide.active}
		
			<a href="{$slide.url|escape:'htmlall':'UTF-8'}" title="{$slide.description|escape:'htmlall':'UTF-8'}">
			<img src="{$smarty.const._MODULE_DIR_}devilslider/images/{$slide.image|escape:'htmlall':'UTF-8'}" alt="{$slide.legend|escape:'htmlall':'UTF-8'}"  />
			</a>
			
		
	{/if}
{/foreach}
</div></div>












{/if}
<!-- /Module devilslider -->
