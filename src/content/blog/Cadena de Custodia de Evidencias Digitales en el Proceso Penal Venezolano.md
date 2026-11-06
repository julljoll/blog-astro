---
title: "Cadena de Custodia de Evidencias Digitales en el Proceso Penal Venezolano"
description: "Análisis pericial y procesal de la cadena de custodia bajo norma ISO/IEC 27037 y el Manual Único del Ministerio Público y CICPC en Venezuela."
pubDate: 2026-11-05
author: "Jull Editor"
slug: "cadena-de-custodia-evidencias-digitales-venezuela"
tags: ["informatica-forense", "cadena-de-custodia", "sha-256", "venezuela", "iso-27037"]
category: "Forense Digital"
seoKeyword: "cadena de custodia evidencia digital venezuela"
readingTime: 6
featured: true
draft: false
---

En síntesis procesal, la **cadena de custodia de evidencias digitales** en Venezuela constituye el conjunto de protocolos imperativos orientados a garantizar la **mismidad, autenticidad e inalterabilidad** de los elementos informáticos de convicción desde su fijación o incautación hasta su definitiva valoración en juicio oral.

Conforme a la doctrina de la Sala de Casación Penal del Tribunal Supremo de Justicia (TSJ) y el Manual Único de Cadena de Custodia de Evidencias Físicas (versión 2017), la validez probatoria de todo mensaje de datos exige la constancia del cálculo del hash criptográfico SHA-256 en el acta de extracción.

## 📑 Tabla de Contenidos
1. [Marco Normativo Positivo en Venezuela](#marco-legal)
2. [Protocolo Pericial de Preservación de Evidencias](#protocolo)
3. [El Hash SHA-256 y la Garantía de Mismidad](#hash)
4. [Preguntas Frecuentes (FAQ)](#faq)

## Marco Normativo Positivo en Venezuela {#marco-legal}
El tratamiento pericial de soportes informáticos se sustenta en una pirámide jurídica sólida:
- **Constitución de la República Bolivariana de Venezuela (CRBV, Arts. 28, 60 y 110):** Tutela efectiva de la intimidad, autodeterminación informativa y acceso a tecnologías.
- **Decreto-Ley de Mensajes de Datos y Firmas Electrónicas (G.O. Nº 37.148):** Confiere plena eficacia probatoria a los datos en formato digital que conserven su integridad.
- **Ley Especial contra los Delitos Informáticos (G.O. Nº 37.313):** Tipificación de accesos indebidos, sabotajes y vulneración de sistemas.

## Protocolo Pericial de Preservación de Evidencias {#protocolo}
La actuación pericial en el terreno debe apegarse a las directrices de la norma técnica internacional **ISO/IEC 27037:2012** (Directrices para la identificación, recolección, adquisición y preservación de evidencia digital) y al estándar **RFC 3227** para la preservación de memoria volátil (RAM):

1. **Aislamiento Criptográfico:** Desconexión de redes mediante bolsas de Faraday o bloqueo electromagnético para evitar borrado remoto.
2. **Duplicación Forense Bit a Bit:** Empleo de bloqueadores de escritura físicos (write blockers) al generar imágenes forenses RAW/DD o E01.
3. **Firma Criptográfica Inmediata:** Verificación cruzada entre el soporte de origen y la imagen clonada.

## El Hash SHA-256 y la Garantía de Mismidad {#hash}
El principio de mismidad exige que la evidencia exhibida en la fase de juicio sea idéntica a la extraída en la fase preparatoria. Si una sola variable en un archivo ejecutable, registro de eventos (logs) o base de datos es modificada, el resumen criptográfico cambiará por completo por efecto avalancha.

## ❓ Preguntas Frecuentes (FAQ) {#faq}

**P: ¿Qué ocurre si se rompe la cadena de custodia de un archivo digital?**
R: La evidencia deviene en ilícita o carente de valor convictivo conforme al artículo 181 del Código Orgánico Procesal Penal (COPP), procediendo su exclusión probatoria por vulneración del debido proceso.

**P: ¿Tiene validez un informe pericial sin el algoritmo de hash?**
R: Carece de certeza pericial, pues no permite a la contraparte ejercer el control y contradicción sobre la inalterabilidad de la muestra.

> *Descargo ético: Este artículo es de índole académica e informativa y no sustituye la asesoría legal individual ni un dictamen pericial en causa penal activa.*