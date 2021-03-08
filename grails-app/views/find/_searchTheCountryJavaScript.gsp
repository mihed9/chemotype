<script type="application/javascript">
    $(document).ready(function () {

        var COMPARE = '<tr id=\"chemoType\"><th style=\"color: #31708f; background-color: #bce8f1; border: 2px solid #ddd;\"><g:message code="compare.page.chemoType" /></th></tr><tr id=\"country\"><th style=\"color: #31708f; background-color: #bce8f1; border: 2px solid #ddd;\"><g:message code="compare.page.country" /></th></tr><tr id=\"region\"><th style=\"color: #31708f; background-color: #bce8f1; border: 2px solid #ddd;\"><g:message code="compare.page.region" /></th></tr><tr id="component\"><th style="color: #3c763d; background-color: #d6e9c6;\"><g:message code="compare.page.component" /></th></tr>';

        var resultFamily;
        var resultGenus;
        var resultSpecies;
        var countries = '';

        var $body = $('body');
        $('.collapse').collapse('show');
        $('#collapseInstruction').collapse('hide');
        getFamily();
        initChosen();

        $body.on('click', '#choseFamily', function () {
            var family = $('.chosen-family option:selected').val();
            if(family != 0){
                $('#choseGenus').removeAttr('disabled');
                $('#genus').removeAttr('disabled');
                $('#choseFamily').attr('disabled', 'disabled');
                $(".chosen-family").prop('disabled', true).trigger("chosen:updated");
                getGenus(family);
            }
        });

        $body.on('click', '#choseGenus', function () {
            var idGenus = $('.chosen-genus option:selected').val();
            if(idGenus != 0){
                $('#choseSpecies').removeAttr('disabled');
                $('#species').removeAttr('disabled');
                $('#choseGenus').attr('disabled', 'disabled');
                $(".chosen-genus").prop('disabled', true).trigger("chosen:updated");
                getSpecies(idGenus);
            }
        });

        $body.on('click', '#choseSpecies', function () {
            var idSpecies = $('.chosen-species option:selected').val();
            if(idSpecies != 0){
                $('#choseCountry').removeAttr('disabled');
                $('#species').removeAttr('disabled');
                $('#selectAllCountry').removeAttr('disabled');
                $('#unSelectAllCountry').removeAttr('disabled');
                $('#choseSpecies').attr('disabled', 'disabled');
                $(".chosen-species").prop('disabled', true).trigger("chosen:updated");
                getCountry(idSpecies);
            }
        });

        $body.on('click', '#choseCountry', function () {
            var listCountry = listCheckboxCountry();
            if(listCountry.length != 0){
                $('#choseCountry').attr('disabled', 'disabled');
                $('#result').removeClass('hide-block');
                $('#result-species').text(resultSpecies);
                $('#result-family').text(resultFamily);
                $('#result-genus').text(resultGenus);
                getResult(listCountry);
            }
        });

        $body.on('click', '.btn-info-click', function () {
            var id = $(this).attr('id');
            if($('#' + id).text() === 'More'){
                $('#' + id).text('Hide');
            } else {
                $('#' + id).text('More');
            }
        });

        $body.on('click', '#compare', function () {
            var listChemotype = getListChemotypeForCompare();
            if(listChemotype.length != 0){
                compareChemotype(listChemotype);
            }
        });

        $body.on('click', '#selectAllCountry', function () {
            selectAllCountries();
        });

        $body.on('click', '#unSelectAllCountry', function () {
            unSelectAllCountries();
        });

        $body.on('click', '.close', function () {
            restartCompare();
        });

        function inicializationCheckbox(){
            $(':checkbox').checkboxpicker();
        }

        function inicializationpopUpImg(){
            $('.imgShow').hover(function(){
                var file = $(this).data('img');
                $('.imgShow').tinyTips('yellow', '<img src="/images/compoundImg/'+file+'" />');
            });
        }

        function getFamily() {
            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'variability', action: 'takeFamily')}',
                async: true,
                dataType: 'json',
                success: function (result) {
                    if (result) {
                        $.each(result, function () {
                            $('#familyGenus').append('<option value="' + this + '">' + this + '</option>');
                        });
                        $(".chosen-family").trigger("chosen:updated");
                    } else {

                    }
                }
            });
        }

        function getGenus(family) {
            resultFamily = $('.chosen-family option:selected').text();

            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'variability', action: 'takeGenus')}',
                async: true,
                data: {family: family},
                dataType: 'json',
                success: function (result) {
                    if (result) {
                        $.each(result, function () {
                            $('#genus').append('<option value="' + this.id + '">' + this.genus + '</option>');
                        });
                        $(".chosen-genus").trigger("chosen:updated");
                    } else {

                    }
                }
            });
        }

        function getSpecies(idGenus) {
            resultGenus = $('.chosen-genus option:selected').text();

            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'variability', action: 'takeSpecies')}',
                async: true,
                data: {idGenus: idGenus},
                dataType: 'json',
                success: function (result) {
                    if (result) {
                        $.each(result, function () {
                            $('#species').append('<option value="' + this.id + '">' + this.species + '</option>');
                        });
                        $(".chosen-species").trigger("chosen:updated");
                    } else {
                        console.log('not found');
                    }

                }
            });
        }

        function getCountry(idSpecies) {
            resultSpecies = $('.chosen-species option:selected').text();

            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'variability', action: 'takeCountry')}',
                async: true,
                data: {idSpecies: idSpecies},
                dataType: 'json',
                success: function (result) {
                    if (result) {
                        $.each(result, function () {
                            var id = this.valueOf();
                            var $id = $('#c' + id);
                            $id.removeAttr('disabled');
                            $id.parent().find('img').removeClass('opacity')
                        });
                        $('.opacity').parent().parent().hide();
                    } else {
                        console.log('not found');
                    }

                }
            });
        }

        function getResult(listCountry) {
            var count = listCountry.length;
            var idSpecies = $('.chosen-species option:selected').val();
            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'variability', action: 'takeResult')}',
                async: true,
                data: {listCountry: listCountry,
                       idSpecies: idSpecies,
                       count: count},
                dataType: 'json',
                success: function (result) {
                    if (result) {
                        $('.collapse').collapse('hide');
                        $('#result').removeClass('hide-elem');
                        $('body,html').animate({scrollTop: 0}, 100);

                        $.each(result, function () {
                            var id = this.id;
                            var count = 0;
                            var length = this.compounds.length;
                            $('.result-chemoType').append("<p style=\"font-size: 14px\">Country: <b>"+this.country+"</b><span style=\"float: right;\"><strong>Compare: </strong><input data-id-chemoType=\""+id+"\" type=\"checkbox\" data-off-icon-cls=\"gluphicon-thumbs-down\" data-on-icon-cls=\"gluphicon-thumbs-up\"\"></div></p>" +
                                    "<table class=\"table volume table-bordered general-result\" cellspacing=\"0\">" +
                                    "<thead class=\"alert-info\"><tr><th style=\"width: 20%\"><b>The name of the Chemotype</b></th><th style=\"width: 20%\"><b>Region</b></th><th style=\"width: 40%\"><b>Component</b></th><th style=\"width: 20%\"><b>Percentage,%</b></th></tr></thead>" +
                                    "<tbody><tr><td><span>"+this.name+"</span><sup><a href='${createLink(controller: 'variability', action: 'chemotypeInfo')}/"+id+"' target=\"_blank\" style=\"margin-left: 5px; font-style: oblique\">info</a><sup></td><td><span>"+this.region+"</span></td><td id=\"compound-name"+this.id+"\"></td><td id=\"min-max"+this.id+"\"></td></tr></tbody></table>");

                            $.each(this.compounds, function () {
                                count++;
                                var note="";
                                if(this[5] != null){
                                    note = " ["+this[5]+"]";
                                }
                                if(count < 6){
                                    $('#compound-name'+id).append("<span>"+this[1]+"</span><sup><a href='${createLink(controller: 'variability', action: 'componentInfo')}/"+this[1]+"' target=\"_blank\" style=\"margin-left: 5px; font-style: oblique\">info</a> </sup><br>");
                                    if(this[2] !== 0 || this[3] !== 0) {
                                        $('#min-max' + id).append(this[2] + " - " + this[3] +note+ "<br>");
                                    } else {
                                        $('#min-max' + id).append(this[5]+ "<br>");
                                    }
                                } else if (count == 6){
                                    $('#compound-name'+id).append("<span class=\"collapse general-"+id+"\" id=\"elem-c-"+id+"\"></span>");
                                    $('#min-max'+id).append("<span class=\"collapse general-"+id+"\" id=\"elem-m-"+id+"\"></span>");
                                    $('#elem-c-'+id).append(this[1]+"<sup><a href='${createLink(controller: 'variability', action: 'componentInfo')}/"+this[1]+"' target=\"_blank\" style=\"margin-left: 5px; font-style: oblique\">info</a></sup><br>");
                                    if(this[2] !== 0 || this[3] !== 0) {
                                        $('#elem-m-'+id).append(this[2]+" - "+this[3]+note+"<br>");
                                    } else {
                                        $('#elem-m-'+id).append(this[5]+"<br>");
                                    }
                                } else if (count > 6){
                                    $('#elem-c-'+id).append(this[1]+"<sup><a href='${createLink(controller: 'variability', action: 'componentInfo')}/"+this[1]+"' target=\"_blank\" style=\"margin-left: 5px; font-style: oblique\">info</a></sup><br>");
                                    if(this[2] !== 0 || this[3] !== 0) {
                                        $('#elem-m-'+id).append(this[2]+" - "+this[3]+note+"<br>");
                                    } else {
                                        $('#elem-m-'+id).append(this[5]+"<br>");
                                    }
                                }

                                if(count == length){
                                    $('#min-max'+id).append("<button id=\"more"+id+"\" data-target=\".general-"+id+"\" data-toggle=\"collapse\" class=\"btn btn-info btn-info-click\">More</button>");
                                }
                            });
                        });
                        inicializationCheckbox();
                        inicializationpopUpImg();
                    } else {
                        console.log('not found');
                    }

                }
            });
        }

        function compareChemotype(listChemotype) {
            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'variability', action: 'compareChemotype')}',
                async: true,
                data: {
                    listChemotype: listChemotype,
                    count: listChemotype.length
                },
                dataType: 'json',
                success: function (result) {
                    if(result){
                        $.each(result, function () {
                            $('#chemoType').append('<th style="color: #31708f;">'+this.name+'</th>');
                            $('#country').append('<th style="color: #31708f;">'+this.country+'</th>');

                            $.each(this.compounds, function () {
                                if($('#comp'+this[0]).length == 0){
                                    $('#compareTable').append('<tr id="comp'+this[0]+'"><th style="color: #3c763d;">'+this[1]+'</th></tr>');
                                    var max = $('#chemoType').children().length - $('#comp'+this[0]).length - 1;
                                    for(var i = 0; i < max; i++){
                                        $('#comp'+this[0]).append('<th>-</th>');
                                    }
                                }
                            });

                            $.each(this.compounds, function () {
                                if(this[4] == null){
                                    $('#comp'+this[0]).append('<th>'+this[2]+'-'+this[3]+'</th>');
                                } else {
                                    $('#comp'+this[0]).append('<th>'+this[4]+'</th>');
                                }
                            });
                        });

                        var countTr = $('#compareTable').find('tr').first().children().length;
                            $('#compareTable').find('tr').each(function(){
                                if($(this).children().length < countTr && $(this).attr("id") !== "component"){
                                    var different = countTr - $(this).children().length;
                                    var count = 0;
                                    while (different > count){
                                        $(this).append('<th>-</th>');
                                        count++;
                                    }
                                }
                            });

                        $('.compare-modal-lg').modal('toggle');
                    }
                }
            });
        }

        function listCheckboxCountry(){
            var listCountry, result = [];
            listCountry = $('input:checkbox:checked');
            listCountry.each(function() {
                countries += $(this).parent().text() + ', ';
                result.push($(this).attr('id').substr(1, 3));
            });
            countries = countries.substr(0, countries.length - 2);
            $('#result-countries').text(countries);
            return result;
        }

        function getListChemotypeForCompare(){
            var listChemotype = [];
            $(':checkbox:checked').each(function(){
                if(this.hasAttribute('data-id-chemoType')){
                    listChemotype.push($(this).attr('data-id-chemoType'));
                }
            });
            return listChemotype
        }

        function initChosen() {
            $(".chosen-family").chosen({
                disable_search_threshold: 10,
                no_results_text: "Oops, nothing found!",
                width: "99%"
            });

            $(".chosen-genus").chosen({
                disable_search_threshold: 10,
                no_results_text: "Oops, nothing found!",
                width: "99%"
            });

            $(".chosen-species").chosen({
                disable_search_threshold: 10,
                no_results_text: "Oops, nothing found!",
                width: "99%"
            });
        }

        function selectAllCountries(){
            $("#allCountry input:enabled").prop('checked', true);
        }

        function unSelectAllCountries(){
            $('#allCountry input:enabled').removeAttr('checked');
        }

        function restartCompare(){
            $('#compareTable').empty();
            $('#compareTable').append(COMPARE);
        }
    });
</script>