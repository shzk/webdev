$(document).ready(function() {
  var radius = 25;
  var width = 7;
  if (window.matchMedia('(min-width: 768px)').matches) {
      radius = 48;
      width = 8;
  } else if (window.matchMedia('(min-width: 960px)').matches) {
      radius = 56;
      width = 10;
  }
  
  var skills_frontend = $('#skills_frontend');
  $.each($(skills_frontend).children(), function(index, el) {
    console.log(el.id);
    var myCircle = Circles.create({
      id:                  el.id,
      radius:              radius,
      value:               el.dataset.procent,
      maxValue:            100,
      width:               width,
      text:                el.dataset.name,
      colors:              ['#222222', '#3aaa35'],
      duration:            400,
      wrpClass:            'circles-wrp',
      textClass:           'circles-text',
      valueStrokeClass:    'circles-valueStroke',
      maxValueStrokeClass: 'circles-maxValueStroke',
      styleWrapper:        true,
      styleText:           false
    });
  });

   var skills_backend = $('#skills_backend');
  $.each($(skills_backend).children(), function(index, el) {
    console.log(el.id);
    var myCircle = Circles.create({
      id:                  el.id,
      radius:              radius,
      value:               el.dataset.procent,
      maxValue:            100,
      width:               width,
      text:                el.dataset.name,
      colors:              ['#222222', '#009cf5'],
      duration:            400,
      wrpClass:            'circles-wrp',
      textClass:           'circles-text',
      valueStrokeClass:    'circles-valueStroke',
      maxValueStrokeClass: 'circles-maxValueStroke',
      styleWrapper:        true,
      styleText:           false
    });
  });

   var skills_workflow = $('#skills_workflow');
  $.each($(skills_workflow).children(), function(index, el) {
    console.log(el.id);
    var myCircle = Circles.create({
      id:                  el.id,
      radius:              radius,
      value:               el.dataset.procent,
      maxValue:            100,
      width:               width,
      text:                el.dataset.name,
      colors:              ['#222222', '#ffcc00'],
      duration:            400,
      wrpClass:            'circles-wrp',
      textClass:           'circles-text',
      valueStrokeClass:    'circles-valueStroke',
      maxValueStrokeClass: 'circles-maxValueStroke',
      styleWrapper:        true,
      styleText:           false
    });
  });
});