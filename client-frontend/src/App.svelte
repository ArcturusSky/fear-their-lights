<script>
    import 'ldrs/dotPulse';
    let isClicked = false; // state to track the button click
</script>

<main>
    <h1>FEAR THEIR LIGHT</h1>
  
    <button on:click={() => isClicked = !isClicked} class="play-button">
      Play
    </button>
  
    {#if isClicked}
      <p>Game starting <l-dot-pulse size="20" speed="2.0" color="white"></l-dot-pulse></p>
    {/if}
  </main>

<style> /* CSS Style there */

    main {
        background-color: rgb(0, 0, 0);
        height: 100vh;
        color: white; /* text color */
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column; /* Centered all the content */
    }

    h1 {
        font-size: 48px;
        text-align: center;
        font-family: "Press Start 2P", cursive; /* test */
        color: white;
        text-shadow: 4px 4px 0px black; /* Pixelised effect */
        margin-top: 20vh; /* vertical centered */
    }

    .play-button {
        display: block;
        margin: 20px auto;
        background-color: #333; /* Dark background */
        color: white;
        font-family: "Press Start 2P", cursive;
        font-size: 24px;
        border: 3px solid #fff;
        border-radius: 8px;
        cursor: pointer;
        transition: all 0.3 ease;
    }

    .play-button:hover {
        background-color: #555; /* lighten on hover */
        border-color: #ddd; /* Change border color */
    }
</style>