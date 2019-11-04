
<div class='geofield' data-geofield>

    {$itemsCountry = []}
    {$itemsCountry[] = [
        'value' => 0,
        'text' => {lang "plugin.geo.field.country.chooseItem"}
    ]}
    {foreach $aCountries as $item}
        {$itemsCountry[] = [
            'value' => $item->getId(),
            'text' => $item->getName()
        ]}
    {/foreach}

    {if $oGeoTarget and $oGeoTarget->getCountry()}
        {$selectedCountry = $oGeoTarget->getCountry()->getId()}
    {/if}

        {$selectedCountry = 149}
    
    {component 'bs-form' template='select'
        name          = "{$oBehaviorGeo->getParam('field')}[country]"
        label         = {lang "plugin.geo.field.country.label"}
        items         = $itemsCountry
        attributes    = ['data-country' => true]
        require       = $oBehaviorGeo->getParam('require_country')
        selected      = $selectedCountry}

    {foreach $aRegions as $item}
        {$itemsRegion[] = [
            'value' => $item->getId(),
            'text' => $item->getName()
        ]}
    {/foreach}

    {if $oGeoTarget and $oGeoTarget->getRegion()}
        {$selectedRegion = $oGeoTarget->getRegion()->getId()}
    {/if}

    {if !$aRegions}
        {$itemsRegion[] = [
            'text' => {lang "plugin.geo.field.region.emptyItem"}
        ]}
    {/if}

    {component 'bs-form' template='select'
        name          = "{$oBehaviorGeo->getParam('field')}[region]"
        label         = {lang "plugin.geo.field.region.label"}
        items         = $itemsRegion
        disabled      = !$aRegions
        attributes    = ['data-region' => true]
        require       = $oBehaviorGeo->getParam('require_region')
        selected      = $selectedRegion}

    {foreach $aCities as $item}
        {$itemsCity[] = [
            'value' => $item->getId(),
            'text' => $item->getName()
        ]}
    {/foreach}

    {if !$aCities}
        {$itemsCity[] = [
            'text' => {lang "plugin.geo.field.city.emptyItem"}
        ]}
    {/if}

    {if $oGeoTarget and $oGeoTarget->getCity()}
        {$selectedCity = $oGeoTarget->getCity()->getId()}
    {/if}

    {component 'bs-form' template='select'
        name          = "{$oBehaviorGeo->getParam('field')}[city]"
        label         = {lang "plugin.geo.field.city.label"}
        items         = $itemsCity
        disabled      = !$aCities
        attributes    = ['data-city' => true]
        require       = $oBehaviorGeo->getParam('require_city')
        selected      = $selectedCity}

</div>