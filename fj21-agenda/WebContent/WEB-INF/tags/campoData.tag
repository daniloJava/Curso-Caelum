<%@ attribute name="id" required="true" %>

<input id="${id}" name="${id}" />
<script>
$( "#${id}" ).datepicker({
    changeMonth: true,
    changeYear: true
  });
</script>


 
