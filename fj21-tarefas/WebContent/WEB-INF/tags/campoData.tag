<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ attribute name="id" required="true" %>
<%@ attribute name="value" %>

<input id="${id}" name="${id}" value="${value}" />
<script>
$( "#${id}" ).datepicker({
    changeMonth: true,
    changeYear: true
  });
</script>