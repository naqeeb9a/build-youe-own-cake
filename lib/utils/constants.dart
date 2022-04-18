dynamic cakeData = "";

var publishKey =
    "pk_test_51KpnpyD63RjfyUjktke4vWFM2Gv8beRx9xgmyM62VUXrGVIHV0zG5dSLtmgyTFKcpr2H1GK2Zh0yzyvoh8ATexcJ00KraKfJGP";
var secretKey =
    "sk_test_51KpnpyD63RjfyUjkAq6BxA7P4423jsXEjIn4nMsJ3ZqdqCpSk6um1QqgpmTNYJAHoCc1yVnJHY17HvO1uU1hPrOF00xzVEbRH1";

dynamic headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};

List cake = [
  {
    "name": "Anniversary Cake",
    "images": [
      "assets/Cakes/4K8A7063.JPG",
      "assets/Cakes/4K8A7108.JPG",
      "assets/Cakes/4K8A7119.JPG",
      "assets/Cakes/4K8A7122.JPG",
    ],
    "description":
        "Anniversary Cake is sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring. 2. a flat, thin mass of bread, esp. unleavened bread."
  },
  {
    "name": "Elephant Cake",
    "images": [
      "assets/Cakes/4K8A7354.JPG",
      "assets/Cakes/4K8A7369.JPG",
      "assets/Cakes/4K8A7374.JPG",
      "assets/Cakes/4K8A7376.JPG",
    ],
    "description":
        "Elephant Cake is sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring. 2. a flat, thin mass of bread, esp. unleavened bread."
  },
  {
    "name": "Floral Dream",
    "images": [
      "assets/Cakes/4K8A7261.JPG",
      "assets/Cakes/4K8A7286.JPG",
    ],
    "description":
        "Floral Dream is sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring. 2. a flat, thin mass of bread, esp. unleavened bread."
  },
  {
    "name": "Sweet Swan",
    "images": [
      "assets/Cakes/4K8A7393.JPG",
      "assets/Cakes/4K8A7395.JPG",
      "assets/Cakes/4K8A7410.JPG",
    ],
    "description":
        "Sweet Swan is sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring. 2. a flat, thin mass of bread, esp. unleavened bread."
  },
  {
    "name": "Party In Pink",
    "images": [
      "assets/Cakes/4K8A7147.JPG",
    ],
    "description":
        "Party In Pink is sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring. 2. a flat, thin mass of bread, esp. unleavened bread."
  },
  {
    "name": "Lilac Love",
    "images": [
      "assets/Cakes/4K8A7601.JPG",
      "assets/Cakes/4K8A7616.JPG",
      "assets/Cakes/4K8A7617.JPG",
    ],
    "description":
        "Lilac Love is sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring. 2. a flat, thin mass of bread, esp. unleavened bread."
  },
  {
    "name": "Sunflower Cake",
    "images": [
      "assets/Cakes/4K8A7456.JPG",
      "assets/Cakes/4K8A7491.JPG",
    ],
    "description":
        "Sunflower Cake is sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring. 2. a flat, thin mass of bread, esp. unleavened bread."
  },
  {
    "name": "Bird Song",
    "images": [
      "assets/Cakes/4K8A7215.JPG",
      "assets/Cakes/4K8A7229.JPG",
    ],
    "description":
        "Bird Song is sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring. 2. a flat, thin mass of bread, esp. unleavened bread."
  },
];

List size = [
  "2 Pound",
  '2.5 Pound',
  '3 Pound',
  '4 Pound',
  '5 Pound',
  '6 Pound',
];

List extraTopping = [
  {
    "image":
        "https://www.pngfind.com/pngs/m/341-3413414_sliced-strawberry-transparent-background-hd-png-download.png",
    "name": "Strawberry",
  },
  {
    "image":
        "https://w7.pngwing.com/pngs/523/772/png-transparent-chocolate-bar-chocolate-food-desktop-wallpaper-chocolate-bar.png",
    "name": "Chocolate",
  },
  {
    "image":
        "https://toppng.com/uploads/preview/pink-donut-png-115521317504icfcwlpjg.png",
    "name": "Donut",
  },
  {
    "image":
        "https://www.vhv.rs/dpng/d/39-392139_fruit-pineapple-hd-png-download.png",
    "name": "Pineapple",
  },
  {
    "image": "https://pngimg.com/uploads/biscuit/biscuit_PNG68.png",
    "name": "Biscuits",
  },
];
