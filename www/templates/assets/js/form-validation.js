$(document).ready(function(){


    ;(function(){

    var  formValidation = {

            isValid : true,

            

            init : function(){
                this.setUpListener();
                
            },

            setUpListener : function(){
                $('#form').on('submit', this._validateForm).on('submit', this._sendEmail);
                $('#clear').on('click',this._resetForm);
            },

            _validateForm : function(e){
                e.preventDefault();

                function rClassAndAppend(formGroup,toolTip){
                            formGroup.addClass('error');
                            formGroup.find('.form__tooltip').remove();
                            formGroup.append(toolTip);
                        };
                
                var form = $(this),
                    inputs = form.find('input , textarea'),
                    checkboxes = form.find('input:checkbox'),
                    radios = form.find('input:radio'),
                    valid = true;


                $.each(inputs , function(index,val){
                    var input = $(val),
                        value = input.val().trim(),
                        formGroup = input.parents('.form__group'),
                        label = formGroup.find('label').text().toLowerCase(),
                        textError = 'Вы не ввели' + label,
                        toolTip = $('<span class="form__tooltip ">'+ textError +'</span>');
                        
                        
                        if(value.length === 0){
                            rClassAndAppend(formGroup,toolTip);
                            valid = false;
                            
                        }

                        // ПРоверка EMail
                        if(!input.is('textarea')){
                           if(input.attr('type').toLocaleLowerCase() === 'email'){
                               if(value !== ''){
                                var checkEmail = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;
                                if( checkEmail.test( value ) ){
                                    formGroup.find('.form__tooltip').remove();
                                    formGroup.removeClass('error');
                                }
                                else{
                                    textError = 'Вы ввели неправильный email';
                                    toolTip = $('<span class="form__tooltip ">'+ textError +'</span>');
                                    formGroup.addClass('error');
                                    formGroup.find('.form__tooltip').remove();
                                    formGroup.append(toolTip);
                                }
                            }
                           }
                        }
                        //- ПРоверка EMail
                        
                        input.on('focus' , function(){
                            formGroup.find('.form__tooltip').remove();
                            
                        });

                        input.on('input',function(e){
                            formGroup.removeClass('error');
                            
                        });

                        input.on('change',function(e){
                            formGroup.removeClass('error');
                            
                        });
                        
                });


                $.each(checkboxes, function (index, val) { 
                     var checkbox = $(val),
                         value = checkbox.val(),
                         formGroup = checkbox.parents('.form__group'),
                         toolTip = $('<span class="form__tooltip ">Нужно выбрать этот чекбокс!</span>');
                         

                         if( checkbox.attr('data-fvalid') == 'required' ){
                             if(checkbox.is(':checked')){
                                formGroup.find('.form__tooltip').remove();
                             }
                             else{
                                rClassAndAppend(formGroup,toolTip);
                                valid = false;
                             }
                         }

                         checkbox.on('click',function(){
                            formGroup.find('.form__tooltip').remove();
                         })
                });

                $.each(radios, function (index, val) { 
                     var radio = $(val),
                         value = radio.val(),
                         type  = radio.attr('type'),
                         name  = radio.attr('name'),
                         isRequire = radio.attr('data-fvalid'),
                         formGroup = radio.parents('.form__group'),
                         toolTip = $('<span class="form__tooltip ">Выберите один из пунктов!</span>');



                         if(isRequire === 'required'){
                             console.log($('input[name="'+ name +'"]:checked').length);
                            if(!($('input[name="'+ name +'"]:checked').length > 0)){
                                rClassAndAppend(formGroup,toolTip);
                                valid = false;
                            }
                            
                         }
                         radio.on('change',function(){
                            formGroup.find('.form__tooltip').remove();
                         })
                });


                this.isValid = valid;
                
            },

            _sendEmail : function(){
                console.log('this _validateForma.isValid = '  + this.isValid);
                if(this.isValid){
                    console.log('sending email');
                }
                else{
                    console.log('Send FAILED!');
                }
            },

            _resetForm : function(e){
                e.preventDefault();
                var thisForm = $(this).parents('form');

                thisForm.find('.form__tooltip').remove();
                thisForm.find('.form__group').removeClass('error');
                
                thisForm[0].reset();


            }
       }
       
        formValidation.init();
    })();
    
   

});