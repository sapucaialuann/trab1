<%@page import="java.util.Map"%>
<%@page import="model.Turma"%>
<%@page import="model.Instrutor"%>
<%@page import="model.Aluno"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <jsp:include page="../template/head.jsp" />
        <link rel="stylesheet" type="text/css" href="../../assets/css/register.css">
    </head>
    <body>
        <jsp:include page="../template/navbar.jsp" />
        <jsp:include page="../template/admin-navbar.jsp"/>
        <div class="container">
            <h2>Transparência</h2>
            <% Map<Instrutor, List<Turma>> map = (Map<Instrutor, List<Turma>>) request.getAttribute("map");
               Map<Instrutor, Integer> map2 = (Map<Instrutor, Integer>) request.getAttribute("map2");
            %>
            <table class="table table-responsive-md table-hover table-striped table-bordered">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">CPF</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Email</th>
                        <th scope="col">Celular</th>
                        <th scope="col">Login</th>
                        <th scope="col">Endereço</th>
                        <th scope="col">Cidade</th>
                        <th scope="col">Bairro</th>
                        <th scope="col">CEP</th>
                        <th scope="col">Aprovado</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <tr>
                        <th scope="row"><%=a.getId()%></th>
                        <td><%=a.getCpf()%></td>
                        <td><%=a.getNome()%></td>
                        <td><%=a.getEmail()%></td>
                        <td><%=a.getCelular()%></td>
                        <td><%=a.getLogin()%></td>
                        <td><%=a.getEndereco()%></td>
                        <td><%=a.getCidade()%></td>
                        <td><%=a.getBairro()%></td>
                        <td><%=a.getCep()%></td>
                        <td><%=a.getAprovado().valor%></td>
                        <td>
                            <a href="/administrador/aluno?id=<%=a.getId()%>">
                                <button type="button" class="btn btn-outline-primary">Editar</button>
                            </a>  
                        </td>
                        <td>
                            <a href="/administrador/alunos?id=<%=a.getId()%>">
                                <button type="button" class="btn btn-outline-danger">Deletar</button>
                            </a>
                        </td>
                        <td>
                            <a href="/administrador/foto-aluno?id=<%=a.getId()%>">
                                <button type="button" class="btn btn-outline-info">Alterar Foto</button>
                            </a>
                        </td>
                    </tr>
                </tbody>
            </table>
            <a href="/administrador/aluno">
                <button type="button" class="btn btn-outline-primary">Novo</button>
            </a>    
        </div>
        <jsp:include page="../template/footer.jsp" />
    </body>
</html>