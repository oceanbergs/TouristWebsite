<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Gallery Management</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
  <style>
    .text-primary {
      color: #6b9e12;
    }
    .bg-primary {
      background-color: #6b9e12;
    }
    .form-input {
      border: 1px solid #6b9e12;
      outline: none;
    }
    .form-input:focus {
      border-color: #4c7b0c;
    }
  </style>
</head>
<body class="bg-gray-100">
  <div class="container mx-auto p-6">
    <h1 class="text-4xl font-bold text-center text-primary mb-8">Gallery Management</h1>

    <div class="bg-white p-6 rounded-lg shadow-lg mb-6">
      <h2 class="text-xl font-semibold mb-4 text-primary">Add New Photo</h2>
      <div class="flex flex-col sm:flex-row gap-4 items-center">
        <input id="photo-url" type="text" placeholder="Enter Photo URL (optional)" class="form-input w-full p-2 rounded"/>
        <input id="photo-alt" type="text" placeholder="Enter Alt Text" class="form-input w-full p-2 rounded"/>
        <input id="photo-upload" type="file" accept="image/*" class="form-input w-full p-2 rounded"/>
        <button onclick="addPhoto()" class="bg-primary text-white px-4 py-2 rounded hover:bg-green-700">Add Photo</button>
      </div>
    </div>

    <div class="bg-white p-6 rounded-lg shadow-lg">
      <h2 class="text-xl font-semibold mb-4 text-primary">Gallery</h2>
      <div id="gallery-container" class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
        <!-- Photos will be dynamically added here -->
      </div>
    </div>
  </div>

  <script>
    const gallery = [];

    function renderGallery() {
      const galleryContainer = document.getElementById('gallery-container');
      galleryContainer.innerHTML = '';
      gallery.forEach((photo, index) => {
        const photoElement = document.createElement('div');
        photoElement.className = 'relative';

        photoElement.innerHTML = `
          <img src="${photo.url}" alt="${photo.alt}" class="rounded-lg shadow-lg w-full h-auto">
          <div class="absolute top-2 right-2 flex space-x-2">
            <button onclick="updatePhoto(${index})" class="bg-blue-500 text-white px-3 py-1 rounded hover:bg-blue-700"><i class="fas fa-edit"></i></button>
            <button onclick="deletePhoto(${index})" class="bg-red-500 text-white px-3 py-1 rounded hover:bg-red-700"><i class="fas fa-trash"></i></button>
          </div>
        `;

        galleryContainer.appendChild(photoElement);
      });
    }

    function addPhoto() {
      const photoUrl = document.getElementById('photo-url').value.trim();
      const photoAlt = document.getElementById('photo-alt').value.trim();
      const photoUpload = document.getElementById('photo-upload').files[0];

      if (!photoAlt) {
        alert('Alt Text is required.');
        return;
      }

      let photoSrc = photoUrl;

      if (photoUpload) {
        const reader = new FileReader();
        reader.onload = function (e) {
          gallery.push({ url: e.target.result, alt: photoAlt });
          renderGallery();
          resetInputs();
        };
        reader.readAsDataURL(photoUpload);
      } else if (photoUrl) {
        gallery.push({ url: photoUrl, alt: photoAlt });
        renderGallery();
        resetInputs();
      } else {
        alert('Please provide a URL or upload a photo.');
      }
    }

    function deletePhoto(index) {
      if (confirm('Are you sure you want to delete this photo?')) {
        gallery.splice(index, 1);
        renderGallery();
      }
    }

    function updatePhoto(index) {
      const newAlt = prompt('Enter new Alt Text (required):', gallery[index].alt);

      if (!newAlt) {
        alert('Alt Text is required.');
        return;
      }

      const fileInput = document.createElement('input');
      fileInput.type = 'file';
      fileInput.accept = 'image/*';
      
      // When file is selected
      fileInput.onchange = function (event) {
        const reader = new FileReader();
        reader.onload = function (e) {
          gallery[index].url = e.target.result; // Set new image URL
          gallery[index].alt = newAlt; // Update alt text
          renderGallery(); // Re-render gallery
        };
        reader.readAsDataURL(event.target.files[0]); // Read file
      };

      // Trigger file input dialog
      fileInput.click();
    }

    function resetInputs() {
      document.getElementById('photo-url').value = '';
      document.getElementById('photo-alt').value = '';
      document.getElementById('photo-upload').value = '';
    }

    renderGallery();
  </script>
</body>
</html>
