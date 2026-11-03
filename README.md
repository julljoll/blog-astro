# sha256.us — Blog de Informática Forense Digital

> **Portal Oficial de Análisis Forense Digital** · Evidencia jurídica certificada bajo ISO/IEC 27037, ISO/IEC 27042, NIST SP 800 y MUCC-2017.  
> Construido con **Astro 7**, **USWDS (U.S. Web Design System)** y **Tailwind CSS v4**.

---

## ✅ Características del proyecto

- 🛡️ **USWDS completo** como sistema de diseño base (componentes oficiales del gobierno de EE. UU.)
- 🎨 **Tailwind CSS v4** para layout responsivo y composición
- 🚀 **Astro 7** — generación estática ultra-rápida (SSG)
- 📰 **Blog con MDX/Markdown** y colecciones de contenido tipadas
- 🔍 SEO optimizado — meta tags, Open Graph, sitemap automático y RSS Feed
- 📱 Menú responsive con hamburger menu (móvil)
- 🎠 **Carrusel Hero** con 5 diapositivas animadas
- 🏛️ Páginas: Inicio, Servicios Forenses, Blog, Sobre Nosotros, Contacto

---

## 📁 Estructura del Proyecto

```text
blog-astro/
├── public/                     ← Activos estáticos servidos directamente
│   ├── fonts/                  ← Fuentes USWDS (Public Sans)
│   ├── img/                    ← Íconos SVG de USWDS
│   ├── logo-head.svg           ← Logo header (del cliente)
│   ├── logo-head.png           ← Logo header fallback
│   ├── Logo-footer sha256-us.png ← Logo footer
│   ├── favicon.svg             ← Favicon principal
│   └── uswds.min.js            ← Runtime JavaScript de USWDS
│
├── src/
│   ├── assets/                 ← Imágenes importables (optimizadas por Astro)
│   │   ├── fonts/              ← Fuentes locales (legado)
│   │   └── blog-placeholder-*.jpg
│   │
│   ├── components/             ← Componentes Astro reutilizables
│   │   ├── BaseHead.astro      ← <head> global (SEO, estilos)
│   │   ├── Header.astro        ← Cabecera con banner USWDS + nav responsiva
│   │   ├── Footer.astro        ← Pie de página institucional
│   │   ├── HeroCarousel.astro  ← Carrusel de 5 diapositivas con JS vanilla
│   │   ├── HeaderLink.astro    ← Enlace de navegación con estado activo
│   │   └── FormattedDate.astro ← Formateo de fechas
│   │
│   ├── content/
│   │   └── blog/               ← 📝 AQUÍ se agregan los artículos del Blog
│   │       ├── ibm-quantum-suiza.md
│   │       ├── first-post.md
│   │       └── ...
│   │
│   ├── layouts/
│   │   └── BlogPost.astro      ← Layout para artículos individuales
│   │
│   ├── pages/
│   │   ├── index.astro         ← Página de inicio (Hero + Servicios + Blog)
│   │   ├── servicios.astro     ← Servicios Forenses
│   │   ├── about.astro         ← Sobre Nosotros
│   │   ├── contacto.astro      ← Formulario y datos de contacto
│   │   ├── rss.xml.js          ← Feed RSS automático
│   │   └── blog/
│   │       ├── index.astro     ← Listado del Blog
│   │       └── [...slug].astro ← Ruta dinámica de artículos
│   │
│   ├── styles/
│   │   └── global.css          ← Imports de USWDS + Tailwind (ÚNICO archivo CSS)
│   │
│   └── consts.ts               ← 📌 Datos globales del sitio (contacto, estándares, etc.)
│
├── astro.config.mjs            ← Configuración de Astro + Tailwind (vite plugin)
├── package.json
├── abrir-blog.bat              ← Atajo para abrir el servidor en Windows
└── README.md
```

---

## 🧞 Comandos disponibles

Ejecutar desde la raíz del proyecto en una terminal:

| Comando              | Acción                                          |
| :------------------- | :---------------------------------------------- |
| `npm install`        | Instala todas las dependencias                  |
| `npm run dev`        | Servidor de desarrollo en `localhost:4321`      |
| `npm run build`      | Genera el sitio estático en `./dist/`           |
| `npm run preview`    | Preview del build antes de publicar             |
| `npm run astro ...`  | Ejecutar comandos Astro CLI                     |

> **Acceso rápido en Windows:** Haz doble clic en `abrir-blog.bat` para iniciar el servidor y abrir el navegador automáticamente.

---

## ✍️ Cómo publicar nuevos artículos en el Blog

### Paso 1 — Crear el archivo del artículo

Crea un nuevo archivo `.md` o `.mdx` dentro de la carpeta:

```
src/content/blog/
```

El nombre del archivo se convierte en la URL del artículo. Ejemplos:
- `cadena-de-custodia.md` → `sha256.us/blog/cadena-de-custodia`
- `forense-whatsapp.md` → `sha256.us/blog/forense-whatsapp`

---

### Paso 2 — Agregar el frontmatter obligatorio

Cada artículo debe comenzar con un bloque de **frontmatter YAML** entre `---`. Este bloque define el título, fecha, imagen destacada y descripción:

```markdown
---
title: 'Tu Título del Artículo Aquí'
description: 'Descripción breve para SEO y la vista previa en el listado del blog.'
pubDate: 'Nov 10 2024'
updatedDate: 'Nov 15 2024'  # Opcional: fecha de la última actualización
heroImage: '../../assets/blog-placeholder-1.jpg'  # Imagen destacada (opcional)
---
```

#### Propiedades del frontmatter:

| Propiedad       | Tipo     | Requerido | Descripción |
| :-------------- | :------- | :-------- | :---------- |
| `title`         | `string` | ✅ Sí      | Título principal del artículo |
| `description`   | `string` | ✅ Sí      | Descripción SEO (aparece en listados y meta tags) |
| `pubDate`       | `Date`   | ✅ Sí      | Fecha de publicación. Formato: `'Nov 10 2024'` |
| `updatedDate`   | `Date`   | No        | Fecha de última actualización (opcional) |
| `heroImage`     | `string` | No        | Ruta relativa a la imagen destacada en `src/assets/` |

---

### Paso 3 — Escribir el contenido en Markdown

Después del bloque `---`, escribe el contenido usando **Markdown estándar**:

```markdown
---
title: 'Cadena de Custodia Digital: Guía Práctica'
description: 'Cómo garantizar la integridad de la evidencia digital bajo MUCC-2017.'
pubDate: 'Nov 10 2024'
heroImage: '../../assets/blog-placeholder-2.jpg'
---

## Introducción

La **cadena de custodia** es el registro cronológico y documentado de todas las
personas que han tenido acceso a una evidencia digital desde su recolección
hasta su presentación ante el tribunal.

### ¿Por qué es importante?

Sin una cadena de custodia adecuada, cualquier evidencia puede ser impugnada
y descartada durante un juicio.

## Pasos para implementarla

1. **Identificación** del medio digital (número de serie, marca, modelo).
2. **Adquisición forense** con dispositivo de bloqueo de escritura.
3. **Verificación de integridad** mediante algoritmo **SHA-256**.
4. **Documentación** en planilla oficial MUCC-2017.
5. **Almacenamiento** en lugar seguro y controlado.

> **Nota:** En sha256.us cumplimos cada uno de estos pasos con rigor técnico y legal.
```

---

### Paso 4 — Usar imágenes propias (opcional)

Para agregar imágenes propias al artículo:

1. Coloca la imagen en `src/assets/` (por ejemplo: `src/assets/mi-imagen.jpg`).
2. Impórtala en el frontmatter como `heroImage`.
3. Dentro del texto puedes usar Markdown estándar:

```markdown
![Descripción de la imagen](../../assets/mi-imagen.jpg)
```

> **Astro optimiza automáticamente** las imágenes (conversión a WebP, lazy loading y dimensiones responsivas).

---

### Paso 5 — Verificar localmente

```bash
npm run dev
```

Abre `http://localhost:4321/blog` para ver tu artículo en el listado y `http://localhost:4321/blog/nombre-del-archivo` para ver la vista individual.

---

### Paso 6 — Generar el sitio para producción

```bash
npm run build
```

El sitio completo se genera en `./dist/`. Copia ese directorio a tu servidor web o servicio de hosting.

---

### Ejemplo de artículo completo listo para publicar

```markdown
---
title: 'WhatsApp como Evidencia Digital: Extracción y Validación Forense'
description: 'Protocolo técnico para la adquisición y certificación de conversaciones de WhatsApp como prueba judicial válida bajo ISO/IEC 27042.'
pubDate: 'Nov 10 2024'
heroImage: '../../assets/blog-placeholder-3.jpg'
---

La mensajería instantánea se ha convertido en una de las **fuentes de evidencia
digital más solicitadas en procesos judiciales**, tanto civiles como penales.

## ¿Puede WhatsApp ser usado como prueba judicial?

Sí, pero requiere de un procedimiento técnico forense riguroso que garantice
la autenticidad, integridad e inalterabilidad del contenido.

## Metodología sha256.us para WhatsApp

1. **Adquisición lógica** del dispositivo con herramientas forenses certificadas.
2. **Extracción de la base de datos** cifrada de WhatsApp (SQLite).
3. **Descifrado y volcado** de conversaciones, metadatos y archivos adjuntos.
4. **Generación de hash SHA-256** para cada archivo extraído.
5. **Informe pericial** con cadena de custodia conforme a MUCC-2017.

> Contáctanos en **soporte@sha256.us** para solicitar este servicio.
```

---

## 🔧 Configuración global del sitio

Edita el archivo [`src/consts.ts`](./src/consts.ts) para actualizar:
- Título y descripción del sitio
- Datos de contacto (teléfonos, email, dirección)
- Redes sociales
- Estándares técnicos mostrados en el sitio

---

## 🏛️ Diseño y Estilos

- **Sistema de diseño:** [USWDS (U.S. Web Design System)](https://github.com/uswds/uswds) v3.x
- **CSS utilitario:** [Tailwind CSS](https://tailwindcss.com/) v4 (vía plugin Vite)
- **Sin CSS propio:** todo el diseño viene de USWDS + Tailwind. El único archivo CSS es `src/styles/global.css`.

---

## 📞 Contacto del Proyecto

| Canal | Información |
| :---- | :---------- |
| 📧 Email | soporte@sha256.us |
| 📞 Venezuela | +58 424 5585474 |
| 📞 Colombia | +57 316 3931945 |
| 📍 Sede | Av. 6 con Calle 7, Edif. Mercantil La Ceiba, 1er Piso, Ofic. N° 8, Quíbor, Lara, Venezuela |
| 🔗 LinkedIn | [linkedin.com/in/julljoll](https://www.linkedin.com/in/julljoll/) |
| 🐦 X (Twitter) | [@sha256us](https://x.com/sha256us) |
| 📸 Instagram | [@sha256.us](https://www.instagram.com/sha256.us) |
