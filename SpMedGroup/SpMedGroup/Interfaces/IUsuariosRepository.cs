﻿using SpMedGroup.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SpMedGroup.Interfaces
{
    interface IUsuariosRepository
    {
        List<Usuarios> ListarUsuarios();

        Usuarios BuscarUsuario(int usuarioId);

    }
}
