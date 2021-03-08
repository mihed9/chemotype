<script type="application/javascript">
    $(document).ready(function () {
        var $body = $('body');
        initChosen();
        getCasNamber();
        getName();
        getIupac();

        function initChosen() {
            $("#casNumber").chosen({
                disable_search_threshold: 10,
                no_results_text: "Oops, nothing found!",
                width: "99%"
            });

            $("#nameOfCompound").chosen({
                disable_search_threshold: 10,
                no_results_text: "Oops, nothing found!",
                width: "99%"
            });

            $("#iupacName").chosen({
                disable_search_threshold: 10,
                no_results_text: "Oops, nothing found!",
                width: "99%"
            });
        }

        $body.on('click', '#choseCasNumber', function () {
            var casNumber = $('#casNumber option:selected').val();
            if(casNumber != 0){
                //getCompoundByCase(casNumber);
                window.open("${createLink(controller: 'compounds', action: 'componentInfo')}/"+casNumber, "_target");
            }
        });

        $body.on('click', '#choseNameOfCompound', function () {
            var nameOfCompound = $('#nameOfCompound option:selected').val();
            if(nameOfCompound != 0){
                //getCompoundByName(nameOfCompound);
                window.open("${createLink(controller: 'compounds', action: 'componentInfo')}/"+nameOfCompound, "_target");
            }
        });

        $body.on('click', '#choseIupacName', function () {
            var iupacName = $('#iupacName option:selected').val();
            if(iupacName != 0){
                //getCompoundByIupac(iupacName);
                window.open("${createLink(controller: 'compounds', action: 'componentInfo')}/"+iupacName, "_target");
            }
        });

        function getCompoundByCase(casNumber) {

            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'compounds', action: 'getCompoundByCas')}',
                async: true,
                data: {casNumber: casNumber},
                dataType: 'json',
                success: function (result) {
                    if (result) {
                        $('#compound').text();
                        $('#cas').text();
                        $('#iupac').text();
                        $('#synonims').text();
                        $('#brutto').text();
                        $('#moll').text();
                        $('#composition').text();
                        $('#defenition').text();
                        $('#state').text();
                        $('#stateNote').text();
                        $('#tmelt').text();
                        $('#tboil').text();
                        $('#tflash').text();
                        $('#solubility').text();
                        $('#pharmacology').text();

                    } else {
                        console.log('not found');
                    }

                }
            });
        }

        function getCompoundByName(nameOfCompound) {
            nameOfCompound = $('#nameOfCompound option:selected').text();

            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'compounds', action: 'getCompoundByName')}',
                async: true,
                data: {nameOfCompound: nameOfCompound},
                dataType: 'json',
                success: function (result) {
                    if (result) {

                    } else {
                        console.log('not found');
                    }

                }
            });
        }

        function getCompoundByIupac(iupacName) {
            iupacName = $('#iupacName option:selected').text();

            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'compounds', action: 'getCompoundByIupac')}',
                async: true,
                data: {iupacName: iupacName},
                dataType: 'json',
                success: function (result) {
                    if (result) {

                    } else {
                        console.log('not found');
                    }

                }
            });
        }

        function getCasNamber() {
            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'compounds', action: 'getCasNumber')}',
                async: true,
                dataType: 'json',
                success: function (result) {
                    if (result) {
                        $.each(result, function () {
                            $('#casNumber').append('<option value="' + this[0] + '">' + this[1] + '</option>');
                        });
                        $("#casNumber").trigger("chosen:updated");
                    } else {

                    }
                }
            });
        }

        function getName() {
            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'compounds', action: 'getName')}',
                async: true,
                dataType: 'json',
                success: function (result) {
                    if (result) {
                        $.each(result, function () {
                            $('#nameOfCompound').append('<option value="' + this + '">' + this + '</option>');
                        });
                        $("#nameOfCompound").trigger("chosen:updated");
                    } else {

                    }
                }
            });
        }

        function getIupac() {
            $.ajax({
                cache: false,
                type: 'POST',
                url: '${createLink(controller: 'compounds', action: 'getIupac')}',
                async: true,
                dataType: 'json',
                success: function (result) {
                    if (result) {
                        $.each(result, function () {
                            $('#iupacName').append('<option value="' + this[0] + '">' + this[1] + '</option>');
                        });
                        $("#iupacName").trigger("chosen:updated");
                    } else {

                    }
                }
            });
        }
    });
</script>