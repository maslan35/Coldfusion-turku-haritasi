<cfquery name="getList" datasource="workCubeDSN">
    SELECT turku_adi,*
    FROM turku
    inner join Iller
    on Iller.ilKod=turku.ilKod
    WHERE 
    Iller.ilKod = #url.ilKod#
</cfquery>
<cfquery name="getParca" datasource="workCubeDSN">
    SELECT parca_adi,*
    FROM uzun_hava
    inner join Iller
    on Iller.ilKod=uzun_hava.ilKod
    WHERE 
    Iller.ilKod = #url.ilKod#
</cfquery>
<cfquery name="getOyun" datasource="workCubeDSN">
    SELECT parca_ad,*
    FROM oyun_bar_saz
    inner join Iller
    on Iller.ilKod=oyun_bar_saz.ilKod
    WHERE 
    Iller.ilKod = #url.ilKod#
</cfquery>

<!--- <cfdump var ="#getList#"> --->

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Türkü Listesi</title>
    <link rel="stylesheet" href="turku-liste.css">
</head>
<body>
    <div class="liste">
        <div>
            <h2>TÜRKÜLER</h2>
            <cfoutput query="getList">
                <ul class="list">
                    <li>                       
                        <a href="ayrıntı.cfm">#turku_adi#</a>
                    </li>
                </ul>
            </cfoutput>
        </div>
        <div>
            <h2>UZUN HAVALAR</h2>
            <cfoutput query="getParca">
                <ul class="list">
                    <li>                       
                        <a href="ayrıntı.cfm">#parca_adi#</a>
                    </li>
                </ul>
            </cfoutput>
        </div>
        <div>
            <h2>OYUN/BAR VE SAZ HAVALARI</h2>
            <cfoutput query="getOyun">
                <ul class="list">
                    <li>                       
                        <a href="ayrıntı.cfm">#parca_ad#</a>
                    </li>
                </ul>
            </cfoutput>
        </div>
        
        
        
    </div>
    
    
</body>
</html>