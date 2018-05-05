


// function handleFileSelect(evt) {
//     var fileNameInp =  document.querySelectorAll('#value');
//     var file = evt.target.files; // FileList object
//     var f = file[0];
//     console.log(file.value);
//     // Only process image files.
//     if (!f.type.match('image.*')) {
//         alert("Image only please....");
//     }

//     for(var i = 0 ; i<fileNameInp.length; i++){
//         fileNameInp[i].value = f.name;
//     }
    


//     var reader = new FileReader();
    
//     // Closure to capture the file information.
//     reader.onload = (function(theFile) {
//         if(theFile.size > 2000000){
//             alert('До 2 Мб');
//             return;
//         }
//         else{
//         return function(e) {
//             // Render thumbnail.
//             var div = document.createElement('div');
//             div.classList.add('form-download__image-container');
//             var deleteImg = document.createElement('div');
//             deleteImg.classList.add('form-download__preview__delete');
            
            
//             var link =  document.createElement('a');
//             link.classList.add('testBtn');
//             link.innerHTML = 'Удалить';

//             deleteImg.appendChild(link);
            
//             var img = document.createElement('img');
//             img.classList.add('form-download__image');
//             img.setAttribute('title', encodeURI(theFile.name));
//             img.src = e.target.result;

//             div.appendChild(img);

//             // div.innerHTML = ['<img class="form-download__image" title="', encodeURI(theFile.name) , '" src="', e.target.result, '" />'].join('');
//             document.getElementById('output').appendChild(deleteImg);
//             document.getElementById('output').appendChild(div);
            
            
//         };
//     }
//     })(f);
//     // Read in the image file as a data URL.
//     reader.readAsDataURL(f);


    
// }
// document.getElementById('file').addEventListener('change', handleFileSelect, false);
// document.getElementById('file2').addEventListener('change', handleFileSelect, false);

