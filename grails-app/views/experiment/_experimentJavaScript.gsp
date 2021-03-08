<script type="text/javascript">
    $(document).ready(function() {

        var $body = $('body');
        initChosen();
        getFamily();
        getName();
        initChoosenChange();

        $body.on('click', '#skipFamily', function () {
            $('#skipGenus').removeAttr('disabled');
            $('#genus').removeAttr('disabled');
            $('#skipFamily').attr('disabled', 'disabled');
            $(".chosen-family").prop('disabled', true).trigger("chosen:updated");
            getGenus();
        });

        $body.on('click', '#skipGenus', function () {
            $('#skipSpecies').removeAttr('disabled');
            $('#species').removeAttr('disabled');
            $('#skipGenus').attr('disabled', 'disabled');
            $(".chosen-genus").prop('disabled', true).trigger("chosen:updated");
            getSpecies();
        });

        $body.on('click', '#skipSpecies', function () {
            $('#species').removeAttr('disabled');
            $('#skipSpecies').attr('disabled', 'disabled');
            $(".chosen-species").prop('disabled', true).trigger("chosen:updated");
        });

        $body.on('click', '#choseNameOfCompound', function () {
            $('#choseNameOfCompound').attr('disabled', 'disabled');
            $("#nameOfCompound").prop('disabled', true).trigger("chosen:updated");
            choosePersentage();
        });

        $body.on('click', '.search', function () {
            search();
        });

        function choosePersentage(){
            var namesOfCompound = $('#nameOfCompound').chosen().val();
            $('#choosePercentage').append('<div class=\"col-md-4\" style=\"margin-top: 1ex\"><b>Component</b></div><div style=\"margin-top: 1ex\" class=\"col-md-5\"><b>Percentage, %</b></div><div style=\"margin-top: 1ex\" class=\"col-md-3\"><b>Deviation, +/-</b></div>');
            jQuery.each(namesOfCompound, function () {
                $('#choosePercentage').append('<div class=\"col-md-4\" style=\"margin-top: 1ex\">'+$('#nameOfCompound option[value="' + this + '"]').html()+'</div><div style=\"margin-top: 1ex\" class=\"col-md-5\"><input id=\"'+this+'\"/></div><div style=\"margin-top: 1ex\" class=\"col-md-3\"><b>5 %</b></div>');
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

        function getGenus() {
            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'experiment', action: 'takeGenus')}',
                async: true,
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

        function getGenusByFamily() {
            var chooseFamily = $('#familyGenus option:selected').val();

            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'variability', action: 'takeGenus')}',
                async: true,
                dataType: 'json',
                data: {
                    family: chooseFamily
                },
                success: function (result) {
                    if (result) {
                        $('#genus').empty();
                        $('#genus').append('<option value=\"0\"><g:message code="search.page.step2message" /></option>');
                        $.each(result, function () {
                            $('#genus').append('<option value="' + this.id + '">' + this.genus + '</option>');
                        });
                        $(".chosen-genus").trigger("chosen:updated");
                    } else {

                    }
                }
            });
        }

        function getSpecies() {
            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'experiment', action: 'takeSpecies')}',
                async: true,
                dataType: 'json',
                success: function (result) {
                    if (result) {
                        $('#species').empty();
                        $('#species').append('<option value="' + this.id + '">' + this.species + '</option>');
                        $.each(result, function () {
                        });
                        $(".chosen-species").trigger("chosen:updated");
                    } else {
                        console.log('not found');
                    }

                }
            });
        }

        function getSpeciesByGenus() {
            var chooseGenus = $('#genus option:selected').val();

            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'variability', action: 'takeSpecies')}',
                async: true,
                dataType: 'json',
                data: {
                    idGenus: chooseGenus
                },
                success: function (result) {
                    if (result) {
                        $('#species').empty();
                        $('#species').append('<option value=\"0\"><g:message code="search.page.step3message" /></option>');
                        $.each(result, function () {
                            $('#species').append('<option value="' + this.id + '">' + this.species + '</option>');
                        });
                        $(".chosen-species").trigger("chosen:updated");
                    } else {

                    }
                }
            });
        }

        function getName() {
            var chooseFamily = $('#familyGenus option:selected').val();
            var chooseGenus = $('#genus option:selected').val();
            var chooseSpecies = $('#species option:selected').val();

            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'experiment', action: 'getCompounds')}',
                async: true,
                dataType: 'json',
                data: {
                    family: chooseFamily,
                    genus: chooseGenus,
                    species: chooseSpecies
                },
                success: function (result) {
                    if (result) {
                        $('#nameOfCompound').empty();
                        $.each(result, function () {
                            $('#nameOfCompound').append('<option value="' + this[0] + '">' + this[1] + '</option>');
                        });
                        $("#nameOfCompound").trigger("chosen:updated");
                    } else {

                    }
                }
            });
        }

        function search(){
            var chooseFamily = $('#familyGenus option:selected').val();
            var chooseGenus = $('#genus option:selected').val();
            var chooseSpecies = $('#species option:selected').val();
            //var chooseCompounds = $('#nameOfCompound option:selected').val();
            var percentageKey = [];
            var percentageValue = [];
            var count = 0;
            $('#choosePercentage input').each(function(){
                percentageValue.push($('#'+this.id).val());
                percentageKey.push(this.id);
            });
            count = percentageKey.length;

            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'experiment', action: 'componentInfo')}',
                async: true,
                dataType: 'json',
                data: {
                    chooseFamily: chooseFamily,
                    chooseGenus: chooseGenus,
                    chooseSpecies: chooseSpecies,
                    percentageKey: percentageKey,
                    percentageValue: percentageValue,
                    count: count
                },
                success: function (result) {
                    if (result.length != 0) {
                        $('tbody').empty();
                        $.each(result, function () {
                            $('tbody').append("<tr><td rowspan=\""+this.size+"\" class=\"col-md-1\">"+this.number+"</td><td rowspan=\""+this.size+"\">"+this.nameSpecies+"</td></tr>");
                            $.each(this.chemotypes, function () {
                                $('tbody').append("<tr><td>"+this[0]+"</td><td>"+this[1]+"</td><td>"+this[4]+"</td><td>"+this[2]+" - "+this[3]+"</td></tr>");
                            });
                        });
                    } else if (result.length == 0) {
                        $('tbody').append("<tr><td style=\"background-color:#FFC7C7;text-align:center;font-size: 140%\" colspan=\"6\">Sorry, but nothing matched your search criteria. Please, try again with some different keywords.</td></tr>");
                    }
                }
            });
        }

        function initChoosenChange(){
            $(".chosen-family").chosen().change(function () {
                getGenusByFamily();
                getName();
                $('#species').empty();
                $(".chosen-species").trigger("chosen:updated");
            });
            $(".chosen-genus").chosen().change(function () {
                getSpeciesByGenus();
                getName();
            });
            $(".chosen-species").chosen().change(function () {
                getName();
            });
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

            $("#nameOfCompound").chosen({
                disable_search_threshold: 10,
                no_results_text: "Oops, nothing found!",
                width: "99%",
                max_selected_options: 5
            });
        }
    });
</script>