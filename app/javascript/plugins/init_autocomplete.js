import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('swimming_pool_location');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
