# Celus - Catálogo Premium de Celulares 📱

Un catálogo interactivo y moderno de celulares con precios actualizados y funcionalidades premium.

## 🌟 Características

- **Catálogos Premium**: Motorola, Samsung, Xiaomi e iPhone
- **Diseño Moderno**: Interfaz glassmorphism con gradientes elegantes
- **IA Integrada**: Descripciones e imágenes generadas con Gemini AI
- **Responsive**: Optimizado para todos los dispositivos
- **Datos Actualizados**: Información de precios desde archivos CSV

## 🚀 Demo en Vivo

Visita la aplicación en: [https://vjlale.github.io/Celus/](https://vjlale.github.io/Celus/)

## 🛠️ Configuración Local

### 1. Clona el repositorio
```bash
git clone https://github.com/vjlale/Celus.git
cd Celus
```

### 2. Configura tu API Key de Gemini (Opcional)
Para habilitar las funciones de IA (descripciones e imágenes generadas):

1. Copia el archivo de configuración:
   ```bash
   cp config.example.js config.local.js
   ```

2. Edita `config.local.js` y agrega tu API Key de Gemini:
   ```javascript
   window.APP_CONFIG = {
       GEMINI_API_KEY: "tu-api-key-aqui",
   };
   ```

3. Obtén tu API Key en [Google AI Studio](https://makersuite.google.com/app/apikey)

### 3. Ejecuta la aplicación
Abre `celprecios.html` en tu navegador o usa un servidor local:

```bash
# Con Python
python -m http.server 8000

# Con Node.js (si tienes http-server instalado)
npx http-server

# Con PHP
php -S localhost:8000
```

## 📊 Datos de Productos

Los precios y especificaciones se cargan desde archivos CSV:
- `CELULARES-PRECIOS - MOTOROLA.csv`
- `CELULARES-PRECIOS - SAMSUNG.csv`
- `CELULARES-PRECIOS - xiaomi.csv`
- `CELULARES-PRECIOS - IPHONE.csv`

Puedes actualizar estos archivos para modificar los productos y precios mostrados.

## 🔧 Funcionalidades

### Sin API Key
- ✅ Navegación por catálogos
- ✅ Visualización de precios
- ✅ Información básica de productos
- ✅ Interfaz responsive

### Con API Key de Gemini
- ✅ Descripciones detalladas generadas por IA
- ✅ Imágenes de productos generadas automáticamente
- ✅ Análisis completo de especificaciones
- ✅ Información técnica expandida

## 🎨 Tecnologías Utilizadas

- **HTML5** - Estructura semántica
- **CSS3** - Diseño glassmorphism y gradientes
- **JavaScript** - Funcionalidad interactiva
- **Tailwind CSS** - Framework de estilos
- **Gemini AI** - Generación de contenido
- **Papa Parse** - Procesamiento de CSV
- **Google Fonts** - Tipografías Inter y JetBrains Mono

## 📱 Compatibilidad

- ✅ Chrome 80+
- ✅ Firefox 75+
- ✅ Safari 13+
- ✅ Edge 80+
- ✅ Dispositivos móviles

## 🔐 Seguridad

- El archivo `config.local.js` está en `.gitignore` para proteger API keys
- Las claves se pueden configurar también via localStorage
- No se almacenan datos sensibles en el repositorio público

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo `LICENSE` para más detalles.

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Por favor:

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📞 Soporte

Si tienes preguntas o problemas, por favor abre un [issue](https://github.com/vjlale/Celus/issues) en GitHub.

---

Hecho con ❤️ para facilitar la búsqueda de celulares con los mejores precios.