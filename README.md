# Transformations

Bu proje, **görüntü işleme** üzerine iki temel dönüşüm işlemini MATLAB kullanarak göstermektedir:  
1. **Thresholding (Eşikleme)** – Gri tonlamalı bir görüntünün ikili (binary) formata dönüştürülmesi.  
2. **Connected Component Labelling** – Binary görüntüdeki bağlı bileşenlerin tespit edilip renkli hale getirilmesi.

---

## 🧠 Kodların Açıklaması

### 1️⃣ transformations.m
Bu betik, bir gri tonlamalı görüntüyü (örnek: `Cyprus2.png`) **eşik değeri** kullanarak binary (0 ve 1) formata dönüştürür.  

**Adımlar:**
- Görüntü yüklenir ve gösterilir.
- Eşik değeri (`thresh=40`) belirlenir.
- Piksel değerleri bu eşik değerine göre 0 veya 1 yapılır.
- MATLAB’ın hazır `im2bw()` fonksiyonu ile aynı işlem tekrar gösterilir.

---

### 2️⃣ gray_binary_rgb.m
Bu betik, **Connected Component Labelling** (Bağlı bileşen etiketleme) tekniğini uygular.  

**Adımlar:**
- Binary bir görüntü yüklenir (`binaryImg2.png`).
- Görüntü **binary** formata dönüştürülür (`imbinarize`).
- **4-bağlılık** ve **8-bağlılık** seçenekleriyle bağlı bileşenler bulunur.
- Bu bileşenler `labelmatrix()` ile etiketlenir.
- `label2rgb()` ile her bileşen farklı bir renge boyanarak görselleştirilir.

---

## 🚀 Kurulum ve Çalıştırma

### 🔹 Gereksinimler
- **MATLAB** (R2017b veya üzeri tavsiye edilir)
- Proje dosyaları (`transformations.m`, `gray_binary_rgb.m`, `Cyprus2.png`, `binaryImg2.png`)

---

### 💻 Windows'ta Çalıştırma
1. **Projeyi İndir**
   ```powershell
   git clone https://github.com/meliketepeli/Transformations.git
   cd Transformations

🍏 macOS'ta Çalıştırma
1. **Projeyi İndir**
git clone https://github.com/meliketepeli/Transformations.git
cd Transformations
