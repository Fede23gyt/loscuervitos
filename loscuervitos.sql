-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-06-2019 a las 19:04:02
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `loscuervitos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `ano_catego` int(11) NOT NULL COMMENT 'Año de juego de categoria (ej 2018 - Cat 2008)',
  `Abrev_categ` varchar(100) NOT NULL COMMENT 'Abreviacion Categoria',
  `Nombre_equipo` varchar(100) NOT NULL COMMENT 'Nombre de equipo',
  `id_profdt` int(11) DEFAULT NULL COMMENT 'Id Profesor DT',
  `id_profayte` int(11) DEFAULT NULL COMMENT 'Id Profesor Ayudante/suplente',
  `id_sede` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cobradores`
--

CREATE TABLE `cobradores` (
  `id_cobrador` int(11) NOT NULL,
  `cobrador` varchar(100) NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concepto_pago`
--

CREATE TABLE `concepto_pago` (
  `Id_cpto` int(11) NOT NULL,
  `nombre_cpto` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Conceptos Pagos cuotas';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichas_medicas`
--

CREATE TABLE `fichas_medicas` (
  `idficha` int(11) NOT NULL,
  `id_jugador` int(11) NOT NULL,
  `nroficha` int(11) NOT NULL,
  `prim_hoja` varchar(255) DEFAULT NULL,
  `seg_hoja` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id_jugador` int(11) NOT NULL COMMENT 'Id Jugador',
  `apellido1` varchar(100) NOT NULL COMMENT 'Apellido',
  `apellido2` varchar(100) DEFAULT NULL COMMENT 'Apellido 2',
  `Nombres` varchar(100) NOT NULL COMMENT 'Nombre Jugador',
  `dni` varchar(100) NOT NULL COMMENT 'DNI',
  `socio` varchar(100) DEFAULT NULL COMMENT 'Nro socio',
  `foto_jug` varchar(100) DEFAULT NULL,
  `fech_nac` date NOT NULL COMMENT 'Fecha Nacimiento',
  `Edad` int(11) NOT NULL COMMENT 'Edad',
  `Lug_nac` varchar(100) DEFAULT NULL COMMENT 'Lugar de nacimiento',
  `sangre` varchar(100) DEFAULT NULL COMMENT 'Tipo de Sangre y Factor',
  `domicilio` varchar(100) NOT NULL COMMENT 'Domicilio',
  `barrio` varchar(100) DEFAULT NULL COMMENT 'Barrio',
  `tel_casa` varchar(100) DEFAULT NULL COMMENT 'Telefono Casa',
  `tel_celular` varchar(100) DEFAULT NULL COMMENT 'Telefono Celular',
  `mail` varchar(100) DEFAULT NULL COMMENT 'Mail',
  `facebook` varchar(100) DEFAULT NULL COMMENT 'Facebook',
  `escuela` varchar(100) DEFAULT NULL COMMENT 'Nombre Institucion escolar',
  `escuela_domi` varchar(100) DEFAULT NULL COMMENT 'Domicilio Escuela',
  `escuela_año` varchar(100) DEFAULT NULL COMMENT 'Año que cursa',
  `esc_horarios` varchar(100) DEFAULT NULL COMMENT 'Horarios',
  `esc_futbol` tinyint(1) NOT NULL COMMENT 'Escuela de futbol anterior',
  `esc_futb_nomb` varchar(100) DEFAULT NULL COMMENT 'Nombre escuela de futbol anterior',
  `padre_apell` varchar(100) DEFAULT NULL COMMENT 'Apellido Padre',
  `padre_nombre` varchar(100) DEFAULT NULL COMMENT 'Nombre Padre',
  `padre_dni` varchar(100) DEFAULT NULL COMMENT 'DNI padre',
  `padre_socio` varchar(100) DEFAULT NULL COMMENT 'Nro socio padre',
  `padre_fecnac` date DEFAULT NULL COMMENT 'Fecha naciemiento padre',
  `padre_lugnac` varchar(100) DEFAULT NULL COMMENT 'Lugar naciemiento padre',
  `padre_telcasa` varchar(100) DEFAULT NULL COMMENT 'Telefono casa padre',
  `padre_celu` varchar(100) DEFAULT NULL COMMENT 'Telefono celular padre',
  `padre_mail` varchar(100) DEFAULT NULL COMMENT 'Mail Padre',
  `padre_laboral` varchar(180) DEFAULT NULL COMMENT 'Contacto laboral Padre',
  `nroficha` int(11) NOT NULL COMMENT 'Nro Ficha Inscripcion',
  `madre_apell` varchar(100) DEFAULT NULL,
  `madre_nombre` varchar(100) DEFAULT NULL,
  `madre_dnicolumn1` varchar(100) DEFAULT NULL,
  `madre_socio` varchar(100) DEFAULT NULL,
  `madre_fecnac` date DEFAULT NULL,
  `madre_lugnac` varchar(100) DEFAULT NULL,
  `padre_domi` varchar(100) DEFAULT NULL,
  `madre_domi` varchar(100) DEFAULT NULL,
  `madre_telcasa` varchar(100) DEFAULT NULL,
  `madre_celu` varchar(100) DEFAULT NULL,
  `madre_mail` varchar(100) DEFAULT NULL,
  `madre_laboral` varchar(180) DEFAULT NULL,
  `aut1_ayno` varchar(100) DEFAULT NULL,
  `aut1_dni` varchar(15) DEFAULT NULL,
  `aut1_relacion` varchar(20) DEFAULT NULL,
  `aut1_tel` varchar(100) DEFAULT NULL,
  `aut2_ayno` varchar(100) DEFAULT NULL,
  `aut2_dni` varchar(15) DEFAULT NULL,
  `aut2_relacion` varchar(20) DEFAULT NULL,
  `aut2_tel` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugxcateg`
--

CREATE TABLE `jugxcateg` (
  `id` int(11) NOT NULL,
  `id_jugador` int(11) NOT NULL,
  `id_categ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meses`
--

CREATE TABLE `meses` (
  `id` int(11) NOT NULL,
  `mes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id_pago` int(11) NOT NULL COMMENT 'Id pago',
  `id_jugador` int(11) NOT NULL COMMENT 'Id jugador',
  `importe` decimal(10,0) NOT NULL COMMENT 'Importe abonado',
  `nro_recibo` int(11) NOT NULL COMMENT 'Nro Recibo',
  `Fecha_pago` date NOT NULL COMMENT 'Fecha de Pago',
  `observaciones` varchar(255) DEFAULT NULL COMMENT 'Observaciones pago',
  `id_cobrador` int(11) NOT NULL COMMENT 'Id cobrador',
  `id_usuario` int(11) NOT NULL COMMENT 'Id usuario registro cobro',
  `Id_cpto` int(11) NOT NULL,
  `id_mes` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id_profesor` int(11) NOT NULL,
  `nombre_profesor` varchar(100) NOT NULL COMMENT 'Apellido y Nombre',
  `telefono_profesor` varchar(100) DEFAULT NULL COMMENT 'Telefono',
  `estado_profesor` tinyint(1) NOT NULL,
  `dni_profesor` varchar(100) NOT NULL COMMENT 'DNI Profesor',
  `mail_profesor` varchar(100) DEFAULT NULL,
  `foto_profesor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profxsede`
--

CREATE TABLE `profxsede` (
  `id` int(11) NOT NULL,
  `id_profe` int(11) NOT NULL,
  `id_sede` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre_rol`) VALUES
(1, 'Administrador'),
(2, 'Gerente'),
(3, 'Coordinador'),
(4, 'Profesor'),
(5, 'Cobrador'),
(6, 'Padre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `id_sede` int(11) NOT NULL,
  `nombre_sede` varchar(100) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`id_sede`, `nombre_sede`, `estado`) VALUES
(1, 'NIDO CUERVITOS', 1),
(2, 'EL TRIBUNO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL COMMENT 'ID',
  `alias_usuario` varchar(100) NOT NULL COMMENT 'Nombre usaurio en Sistema',
  `nombre_usuario` varchar(100) NOT NULL COMMENT 'Apellido y Nombre Usuario',
  `mail` varchar(60) NOT NULL COMMENT 'mail usuario',
  `pass_usuario` varchar(255) NOT NULL COMMENT 'Contraseña',
  `estado_usuario` tinyint(1) NOT NULL COMMENT '1:Activo - 2:Baja',
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `alias_usuario`, `nombre_usuario`, `mail`, `pass_usuario`, `estado_usuario`, `id_rol`) VALUES
(1, 'Fede', 'admin', 'fedesuppa@gmail.com', 'franco', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cobradores`
--
ALTER TABLE `cobradores`
  ADD PRIMARY KEY (`id_cobrador`);

--
-- Indices de la tabla `concepto_pago`
--
ALTER TABLE `concepto_pago`
  ADD PRIMARY KEY (`Id_cpto`);

--
-- Indices de la tabla `fichas_medicas`
--
ALTER TABLE `fichas_medicas`
  ADD PRIMARY KEY (`idficha`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id_jugador`);

--
-- Indices de la tabla `jugxcateg`
--
ALTER TABLE `jugxcateg`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `meses`
--
ALTER TABLE `meses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id_pago`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id_profesor`);

--
-- Indices de la tabla `profxsede`
--
ALTER TABLE `profxsede`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id_sede`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cobradores`
--
ALTER TABLE `cobradores`
  MODIFY `id_cobrador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `concepto_pago`
--
ALTER TABLE `concepto_pago`
  MODIFY `Id_cpto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fichas_medicas`
--
ALTER TABLE `fichas_medicas`
  MODIFY `idficha` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id_jugador` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id Jugador';

--
-- AUTO_INCREMENT de la tabla `jugxcateg`
--
ALTER TABLE `jugxcateg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `meses`
--
ALTER TABLE `meses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id pago';

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `profxsede`
--
ALTER TABLE `profxsede`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id_sede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
