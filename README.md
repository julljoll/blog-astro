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

### 📄 Plantilla Maestra Editorial SEO
Se ha preparado un archivo modelo completo con todas las indicaciones comentadas en el código:
[`src/content/blog/articulo-de-prueba.md`](./src/content/blog/articulo-de-prueba.md)

Para crear un nuevo artículo:
1. Copia y pega el archivo `src/content/blog/articulo-de-prueba.md` con un nuevo nombre (ej: `cadena-de-custodia-digital.md`).
2. Sigue las instrucciones y comentarios `<!-- ... -->` dentro del archivo indicando qué pegar en cada sección.

---

### Paso 1 — Crear el archivo del artículo

Crea un nuevo archivo `.md` o `.mdx` dentro de la carpeta:

```text
src/content/blog/
```

El nombre del archivo se convierte en la URL del artículo. Ejemplos:
- `cadena-de-custodia.md` → `sha256.us/blog/cadena-de-custodia`
- `forense-whatsapp.md` → `sha256.us/blog/forense-whatsapp`

---

### Paso 2 — Configurar el Frontmatter SEO

Cada artículo debe comenzar con un bloque de **frontmatter YAML** entre `---`:

```markdown
---
title: "La ilusión de la invulnerabilidad: Por qué tu mayor brecha de ciberseguridad es humana"
description: "Artículo de opinión pericial: el eslabón humano define el éxito o fracaso judicial en ciberseguridad. Análisis forense bajo norma ISO 27037 y prevención."
pubDate: 2026-11-04
updatedDate: 2026-11-04
author: "Equipo Pericial sha256.us"
tags: ["ciberseguridad", "informatica-forense", "ingenieria-social", "cadena-de-custodia", "iso-27037"]
category: "Opinión Pericial"
heroImage: "../../assets/blog-placeholder-1.jpg"
seoKeyword: "brecha de ciberseguridad humana"
readingTime: 5
featured: true
draft: false
---
```

#### Propiedades del frontmatter y directrices SEO:

| Propiedad | Tipo | Requerido | Directriz SEO para Google |
| :--- | :--- | :--- | :--- |
| `title` | `string` | ✅ Sí | 50 a 60 caracteres. Incluye la palabra clave al inicio. Genera el `<h1>` automáticamente. |
| `description` | `string` | ✅ Sí | 145 a 160 caracteres. Resumen persuasivo que actúa como meta descripción en Google. |
| `pubDate` | `Date` | ✅ Sí | Fecha de publicación (formato `AAAA-MM-DD`). |
| `updatedDate` | `Date` | No | Fecha de actualización para frescura algorítmica de Google. |
| `author` | `string` | No | Señal E-E-A-T (Experiencia y Confiabilidad) requerida por Google. |
| `tags` | `array` | No | 3 a 5 palabras clave temáticas (ej: `["ciberseguridad", "forense"]`). |
| `category` | `string` | No | Categoría principal (ej: `Opinión Pericial`, `Guía Técnica`). |
| `heroImage` | `string` | No | Imagen de cabecera en `src/assets/` (proporción óptima 1200x630 px). |
| `seoKeyword` | `string` | No | Palabra clave objetivo para auditoría interna. |
| `readingTime` | `number` | No | Minutos de lectura estimados. |
| `featured` | `boolean`| No | `true` para destacar en la página principal. |
| `draft` | `boolean`| No | `true` para mantener en borrador sin publicar. |

---

### Paso 3 — Estructura Editorial en 3 Columnas y Clases CSS

El formato editorial incluye clases CSS preconfiguradas para maximizar el tiempo de permanencia (*Dwell Time*) y ganar fragmentos destacados (*Featured Snippets*):

1. **Entradilla (`editorial-lead`):** Primer párrafo de impacto que responde directamente a la intención de búsqueda en las primeras 100 palabras.
2. **Cita destacada (`editorial-quote`):** Frase memorable tipo pull quote que rompe la monotonía visual.
3. **Columnas editoriales (`editorial-three-columns`):** Disposición en 3 columnas en desktop, 2 en tablet y 1 en móvil.
4. **Bloques no cortables (`editorial-col`):** Envuelve cada sección para evitar rupturas antiestéticas entre columnas.
5. **Letra capitular (`editorial-dropcap`):** Letra grande de diario para el primer párrafo.
6. **Subtítulos semánticos (`<h2 class="editorial-subhead">`):** Encabezados H2 para indexación semántica en Google.
7. **Cajas de lección (`editorial-box`):** Destaca normas (ISO 27037, NIST), checklists o jurisprudencia.
8. **Bio del autor (`editorial-author-box`):** Bloque al pie del artículo con acreditación E-E-A-T y llamada a consulta pericial.

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
| 💬 WhatsApp / Teléfono | [+57 316 3931945](https://wa.me/573163931945) |
| 📍 Sede | Av. 6 con Calle 7, Edif. Mercantil La Ceiba, 1er Piso, Ofic. N° 8, Quíbor, Lara, Venezuela |
| 🔗 LinkedIn | [linkedin.com/in/julljoll](https://www.linkedin.com/in/julljoll/) |
| 🐦 X (Twitter) | [@sha256us](https://x.com/sha256us) |
| 📸 Instagram | [@sha256.us](https://www.instagram.com/sha256.us) |
