const buttonDisable = () => {
  const button = document.querySelector('#rent');
  button.addEventListener('click', (event) => {
    event.currentTarget.classList.add('d-none');
  });
}
export { buttonDisable };
