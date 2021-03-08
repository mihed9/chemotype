<head>
    <meta name="layout" content="index"/>
</head>

<body>
<g:render template="/generalTemplate/navbar"/>

<div class="container boxShadow3">
    <div class="row">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>#</th>
                <th>Update old date</th>
                <th>Result updating date</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">Update all</th>
                <td><button id="updateAll" type="button" class="btn btn-success">Update</button></td>
                <td id="resultFamilyGenus"></td>
            </tr>
            %{--<tr>--}%
                %{--<th scope="row">Genus_species</th>--}%
                %{--<td><button id="updateGenusSpecies" type="button" class="btn btn-success">Update</button></td>--}%
                %{--<td id="resultGenusSpecies"></td>--}%
            %{--</tr>--}%
            %{--<tr>--}%
                %{--<th scope="row">Articles</th>--}%
                %{--<td><button id="updateArticles" type="button" class="btn btn-success">Update</button></td>--}%
                %{--<td id="resultArticles"></td>--}%
            %{--</tr>--}%
            %{--<tr>--}%
                %{--<th scope="row">Compounds</th>--}%
                %{--<td><button id="updateCompounds" type="button" class="btn btn-success">Update</button></td>--}%
                %{--<td id="resultCompounds"></td>--}%
            %{--</tr>--}%
            %{--<tr>--}%
                %{--<th scope="row">Spec_chemo</th>--}%
                %{--<td><button id="updateSpecChemo" type="button" class="btn btn-success">Update</button></td>--}%
                %{--<td id="resultSpecChemo"></td>--}%
            %{--</tr>--}%
            %{--<tr>--}%
                %{--<th scope="row">Spec_comp</th>--}%
                %{--<td><button id="updateSpecComp" type="button" class="btn btn-success">Update</button></td>--}%
                %{--<td id="resultSpecComp"></td>--}%
            %{--</tr>--}%
            %{--<tr>--}%
                %{--<th scope="row">Synonimus</th>--}%
                %{--<td><button id="updateSynonimus" type="button" class="btn btn-success">Update</button></td>--}%
                %{--<td id="resultSynonimus"></td>--}%
            %{--</tr>--}%
            %{--<tr>--}%
                %{--<th scope="row">Class</th>--}%
                %{--<td><button id="updateClass" type="button" class="btn btn-success">Update</button></td>--}%
                %{--<td id="resultClass"></td>--}%
            %{--</tr>--}%
            </tbody>
        </table>
        <div class="row" style="margin-left: 2em">
            <div class="col-md-2">
                <button id="cleanDatabase" type="button" class="btn btn-danger">Clean database</button>
            </div>
            <div class="col-md-2">
                <span><b>Result:</b> <span id="resultClean"></span></span>
            </div>
        </div>
    </div>
<g:render template="/generalTemplate/footer"/>
</div>
<script type="text/javascript">
    $(document).ready(function() {

    $('#updateAll').click(function () {
        updateAll();
    });

//    $('#updateGenusSpecies').click(function () {
//        updateGenusSpecies()
//    });
//
//    $('#updateSpecChemo').click(function () {
//        updateSpecChemo();
//    });
//
//    $('#updateSpecComp').click(function () {
//        updateSpecComp();
//    });
//
//    $('#updateArticles').click(function () {
//        updateArticles();
//    });
//
//    $('#updateCompounds').click(function () {
//        updateCompounds();
//    });
//
//    $('#updateSynonimus').click(function () {
//        updateSynonimus();
//    });
//
//    $('#updateClass').click(function () {
//        updateClass();
//    });

    $('#cleanDatabase').click(function () {
        cleanDatabase();
    });

        function updateAll() {
            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'converter', action: 'updateAll')}',
                async: true,
                dataType: 'json',
                success: function (result) {
//                    try{
//                        $('#resultFamilyGenus').empty();
//                        $('#resultFamilyGenus').append('<span style="color: green"><b>OK</b></span>');
//                    } catch (err) {
//                        $('#resultFamilyGenus').append('<span style="color: red"<b>ERROR</b></span>');
//                    }
                }
            });
        }

        %{--function updateGenusSpecies() {--}%
            %{--$.ajax({--}%
                %{--cache: false,--}%
                %{--type: 'POST',--}%
                %{--url: '${createLink(controller: 'converter', action: 'updateGenusSpecies')}',--}%
                %{--async: true,--}%
                %{--dataType: 'json',--}%
                %{--success: function (result) {--}%
                    %{--try{--}%
                        %{--$('#resultGenusSpecies').empty();--}%
                        %{--$('#resultGenusSpecies').append('<span style="color: green"><b>OK</b></span>');--}%
                    %{--} catch (err){--}%
                        %{--$('#resultGenusSpecies').append('<span style="color: red"<b>ERROR</b></span>');--}%
                    %{--}--}%
                %{--}--}%
            %{--});--}%
        %{--}--}%

        %{--function updateArticles() {--}%
            %{--$.ajax({--}%
                %{--cache: false,--}%
                %{--type: 'POST',--}%
                %{--url: '${createLink(controller: 'converter', action: 'updateArticles')}',--}%
                %{--async: true,--}%
                %{--dataType: 'json',--}%
                %{--success: function (result) {--}%
                    %{--try{--}%
                        %{--$('#resultArticles').empty();--}%
                        %{--$('#resultArticles').append('<span style="color: green"><b>OK</b></span>');--}%
                    %{--} catch (err){--}%
                        %{--$('#resultArticles').append('<span style="color: red"<b>ERROR</b></span>');--}%
                    %{--}--}%
                %{--}--}%
            %{--});--}%
        %{--}--}%

        %{--function updateSpecChemo() {--}%
            %{--$.ajax({--}%
                %{--cache: false,--}%
                %{--type: 'POST',--}%
                %{--url: '${createLink(controller: 'converter', action: 'updateSpecChemo')}',--}%
                %{--async: true,--}%
                %{--dataType: 'json',--}%
                %{--success: function (result) {--}%
                    %{--try{--}%
                        %{--$('#resultSpecChemo').empty();--}%
                        %{--$('#resultSpecChemo').append('<span style="color: green"><b>OK</b></span>');--}%
                    %{--} catch (err){--}%
                        %{--$('#resultSpecChemo').append('<span style="color: red"<b>ERROR</b></span>');--}%
                    %{--}--}%
                %{--}--}%
            %{--});--}%
        %{--}--}%

        %{--function updateSpecComp(){--}%
            %{--$.ajax({--}%
                %{--cache: false,--}%
                %{--type: 'POST',--}%
                %{--url: '${createLink(controller: 'converter', action: 'updateSpecComp')}',--}%
                %{--async: true,--}%
                %{--dataType: 'json',--}%
                %{--success: function (result) {--}%
                    %{--try{--}%
                        %{--$('#resultSpecComp').empty();--}%
                        %{--$('#resultSpecComp').append('<span style="color: green"><b>OK</b></span>');--}%
                    %{--} catch (err){--}%
                        %{--$('#resultSpecComp').append('<span style="color: red"<b>ERROR</b></span>');--}%
                    %{--}--}%
                %{--}--}%
            %{--});--}%
        %{--}--}%

        %{--function updateCompounds(){--}%
            %{--$.ajax({--}%
                %{--cache: false,--}%
                %{--type: 'POST',--}%
                %{--url: '${createLink(controller: 'converter', action: 'updateCompounds')}',--}%
                %{--async: true,--}%
                %{--dataType: 'json',--}%
                %{--success: function (result) {--}%
                    %{--try{--}%
                        %{--$('#resultCompounds').empty();--}%
                        %{--$('#resultCompounds').append('<span style="color: green"><b>OK</b></span>');--}%
                    %{--} catch (err){--}%
                        %{--$('#resultCompounds').append('<span style="color: red"<b>ERROR</b></span>');--}%
                    %{--}--}%
                %{--}--}%
            %{--});--}%
        %{--}--}%

        %{--function updateSynonimus(){--}%
            %{--$.ajax({--}%
                %{--cache: false,--}%
                %{--type: 'POST',--}%
                %{--url: '${createLink(controller: 'converter', action: 'updateSynonymus')}',--}%
                %{--async: true,--}%
                %{--dataType: 'json',--}%
                %{--success: function (result) {--}%
                    %{--try{--}%
                        %{--$('#resultSynonimus').empty();--}%
                        %{--$('#resultSynonimus').append('<span style="color: green"><b>OK</b></span>');--}%
                    %{--} catch (err){--}%
                        %{--$('#resultSynonimus').append('<span style="color: red"<b>ERROR</b></span>');--}%
                    %{--}--}%
                %{--}--}%
            %{--});--}%
        %{--}--}%

        %{--function updateClass(){--}%
            %{--$.ajax({--}%
                %{--cache: false,--}%
                %{--type: 'POST',--}%
                %{--url: '${createLink(controller: 'converter', action: 'updateClassName')}',--}%
                %{--async: true,--}%
                %{--dataType: 'json',--}%
                %{--success: function (result) {--}%
                    %{--try{--}%
                        %{--$('#resultClass').empty();--}%
                        %{--$('#resultClass').append('<span style="color: green"><b>OK</b></span>');--}%
                    %{--} catch (err){--}%
                        %{--$('#resultClass').append('<span style="color: red"<b>ERROR</b></span>');--}%
                    %{--}--}%
                %{--}--}%
            %{--});--}%
        %{--}--}%

        function cleanDatabase(){
            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'converter', action: 'cleanDatabase')}',
                async: true,
                dataType: 'json',
                success: function (result) {
                    try{
                        $('#resultClean').empty();
                        $('#resultClean').append('<span style="color: green"><b>OK</b></span>');
                    } catch (err){
                        $('#resultClean').append('<span style="color: red"<b>ERROR</b></span>');
                    }
                }
            });
        }
    });
</script>
</body>