package model.base;

import enums.TipoUsuario;
import lombok.Getter;
import lombok.Setter;
import model.base.Entity;
import org.mindrot.jbcrypt.BCrypt;

@Getter
@Setter
public class Usuario extends Entity {

    private String nome;
    private String login;
    private String senha;
    private TipoUsuario tipo;

    public void hashPassword(String senha) {
        this.senha = BCrypt.hashpw(senha, BCrypt.gensalt());
    }

}
