<script>
    import 'ldrs/dotPulse';
    let isClicked = false; // state to track the button click
</script>

<main>
    <h1>FEAR THEIR LIGHT</h1>

    <button on:click={() => isClicked = !isClicked}
        class="play-button {isClicked ? 'active' : ''}">

      {isClicked ? "Cancel" : "Play"} <!-- if active "Cancel" if not "Play"-->
    </button>
  
    <div class="writing">
    {#if isClicked}
      <p>Game starting <l-dot-pulse size="20" speed="2.0" color="white"></l-dot-pulse></p>
    {/if}
    </div>

    <div class="links-container">
        <a href="/register" class="link">Register</a>
        <a href="/login" class="link">Login</a>
    </div>
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
        margin-top: 0vh; /* vertical centered */
    }

    .writing {
        font-family: "Press Start 2P", cursive;
    }

    .play-button {
        display: block;
        margin: 30px auto;
        background-color: #333; /* Dark background */
        color: white;
        font-family: "Press Start 2P", cursive;
        font-size: 24px;
        border: 5px solid #fff;
        border-radius: 0px;
        cursor: pointer;
        transition: all 0.3 ease;

        width: 250px;
        height: auto;
        text-align: center;
        line-height: 80px;
    }

    .play-button.active {
        background-color: #360000;
        border-color: red;
    }

    .play-button:hover {
        background-color: #360000;/*#555; lighten on hover */
        border-color: #ddd; /* Change border color */
        color: red;
        border: 5px solid #aa0000;
    }

    .links-container {
        display: flex;
        gap: 100px;
    }
    .link {
        display: block;
        margin-top: 10px;
        color: grey;
        font-family: "Press Start 2P", cursive;
        font-size: 16px;
        text-decoration: none;
        transition: color 0.3 ease;
    }

    .link:hover {
        color: burlywood
    }
</style>