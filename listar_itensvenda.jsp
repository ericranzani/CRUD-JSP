    <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_itensvenda.Conexao_itensvenda"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
   <html>  
    <head>  
    <title>Listar ItensVenda</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="itensvenda.jsp">  
     
   <p><strong>Tabela ItensVenda </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
      <td width=50>
        <strong>  Código </strong>
      </td> 
      <td width=50>
        <strong>  Código Venda </strong>
      </td>      
      <td width=50>
        <strong>  Código Produto </strong>
      </td>         
      <td width=50>
        <strong>  Código Tipo de Produto </strong>
      </td> 
      <td width=50>
        <strong>  Código Nota Fiscal </strong>
      </td> 
      <td width=50>
        <strong>  Código Tipo de Pagamento  </strong>
      </td> 
      <td width=50>
        <strong>  Código Funcionário </strong>
      </td>
      <td width=50>
        <strong>  Embalagem  </strong>
      </td>  
      <td width=50>
        <strong>  Quantidade  </strong>
      </td> 
      <td width=50>
        <strong>  Valor Unitário  </strong>
      </td>  
      <td width=50>
        <strong>  Desconto  </strong>
      </td>   
      <td width=50>
        <strong>  Valortotal  </strong>
      </td>         
    </tr>  
     
     
   <%      
      try {  
         con.setConsulta();  
         ResultSet temp = con.getResultado();  
           
         while (temp.next()){  
         %>  
         <tr>  
            <td width=50>  
                <%out.print(temp.getString("itensvenda_codigo"));%>  
            </td> 
            <td width=50>  
                <%out.print(temp.getString("ven_codigo"));%>  
            </td>  
            <td width=50>  
                <%out.print(temp.getString("pro_codigo"));%>  
            </td>  
            <td width=50>  
                <%out.print(temp.getString("tpp_codigo"));%>  
            </td> 
            <td width=50>  
                <%out.print(temp.getString("nf_codigo"));%>  
            </td> 
            <td width=50>  
                <%out.print(temp.getString("tpg_codigo"));%>  
            </td> 
            <td width=50>  
                <%out.print(temp.getString("fun_codigo"));%>  
            </td>
            <td width=50>  
                <%out.print(temp.getString("itv_embalagem"));%>  
            </td>  
            <td width=50>  
                <%out.print(temp.getString("itv_qtde"));%>  
            </td> 
            <td width=50>  
                <%out.print(temp.getString("itv_valorun"));%>  
            </td> 
            <td width=50>  
                <%out.print(temp.getString("itv_desc"));%>  
            </td> 
            <td width=50>  
                <%out.print(temp.getString("itv_valortotal"));%>  
            </td>    
       </tr>  
         <%}  
        
      }catch (Exception e) {  
         e.printStackTrace();  
      }  
        
   %>  
   </table>  
     <p>  
       <input type="submit" name="Submit" value="voltar">  
   </p>  
   </form>  
   </body>  
   </html>  