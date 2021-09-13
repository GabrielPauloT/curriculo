import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
/* import 'package:url_launcher/url_launcher.dart'; */

class Curriculo extends StatelessWidget {
  const Curriculo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7E6E6),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 10,
          ),
          borderRadius: BorderRadius.circular(85),
          color: Color(0xFFE5E5E5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 25,
          ),
          child: ListView(
            children: [
              ListTile(
                leading: Image.network(
                  "http://cdn.onlinewebfonts.com/svg/img_76927.png",
                  alignment: Alignment.center,
                ),
                title: Text(
                  "Gabriel Paulo Tavares da Silva",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              listBase("Data de Nascimento: 18/09/2000"),
              listBase("Sexo: Masculino"),
              listBase("Estado civil: Solteiro"),
              listBase("CEP: 38770-000"),
              listBase(
                  "Endereço: Rua Jairo Martins de Araújo no 1433, Bairro: Primavera"),
              listBase("Cidade: João Pinheiro – MG"),
              listBase("Telefone: (38) 9 8815-5170 ou (38) 9 9918-2624"),
              listBase("E-mail: gabrielpt201111@hotmail.com"),
              /* new InkWell(
                child: new Text("Linkedin", style: TextStyle(fontSize: 14),),
                onTap: () => launch(
                    'https://www.linkedin.com/in/gabriel-paulo-t-a5386b129/'),
              ), */
              ListTile(
                title: Text(
                  "Linkedin: https://www.linkedin.com/in/gabriel-paulo-t-a5386b129/",
                  style: TextStyle(fontSize: 14),
                ),
                /* onTap: () {
                    const url = 'https://www.linkedin.com/in/gabriel-paulo-t-a5386b129/';
                    _launchURL(url);
                  }), */
              ),
              /* GestureDetector(
                  child: Text("Likedin",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue)),
                  onTap: () {
                    const url =
                        'https://www.linkedin.com/in/gabriel-paulo-t-a5386b129/';
                    _launchURL(url);
                  }), */
              listTitle("Habilidades/Competências"),
              Divider(
                color: Colors.black,
                height: 20,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              listCircle(
                  "Trabalho em Equipe - Criatividade - Python - C++ - Java - Flutter - Telecomunicações"),
              listTitle("Formação Escolar"),
              Divider(
                color: Colors.black,
                height: 20,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              Padding(padding: EdgeInsets.only(bottom: 1)),
              listCircle("Bacharelado de Sistemas de Informação (Cursando)"),
              listCircle("Tecnologo de Sistemas para Internet (Cursando)"),
              listTitle("Cursos Profissionalizantes - Capacitação:"),
              Divider(
                color: Colors.black,
                height: 20,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              listCircle("Curso: Rede de Fibra Óptica FTTH"),
              listText("Local: R & C Tecnologia e Formação de Profissional"),
              listText("Duração do Curso: 30 horas"),
              listText("Inicio: 15/06/2020 Término: 17/06/2020"),
              listText("Cidade: Patos de Minas – MG"),
              listTitle("Experiência Profissional"),
              Divider(
                color: Colors.black,
                height: 20,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              listCircle("Nome da Empresa: I.A Telecomunicações LTDA - ME"),
              listText("Contato: (38) 3561-3840"),
              listText("Ramo de Atividade: Telecomunicações"),
              listText("Cidade: João Pinheiro    UF:MG"),
              listText(
                  "Função: Tecnico em Instalação e Manutenção de Redes Fibra Óptica e via Rádio"),
              listText("Período: 04/12/2017 – até o momento"),
            ],
          ),
        ),
      ),
    );
  }

  Widget listBase(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 1, bottom: 1),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }

  Widget listCircle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 1, bottom: 1),
      child: ListTile(
        leading: Icon(FontAwesome.circle_empty),
        title: Text(
          title,
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }

  Widget listTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }

  Widget listText(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 54),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }

/*   _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  } */
}
