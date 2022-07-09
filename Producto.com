ublic void registro(Producto producto) {
		this.sql = "INSERT INTO producto " + 
				"(id,nombre,apellido,contraseña,correo,dni,nacimiento_fecha)" + 
				"VALUE ( " +
				producto.getId() + " ,' " +
				producto.getNombre() + " ','" + 
				producto.getApellido() + " ',' " +
				producto.getContrasenia() + " ',' " +
				producto.getCorreo() + " ', " +
				producto.getDni() + " ,' " +
				producto.getNacimiento_fecha() +" ')";
	
		try {
			conexion.getStmt().executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			System.out.println("Producto Registrado");
		}
