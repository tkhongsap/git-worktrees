<template>
  <div class="app">
    <header class="hero">
      <div class="container">
        <h1>Tkhongsap</h1>
        <p>Personal Website - Landing Page</p>
        <p class="subtitle">This is the base template for parallel redesign</p>
      </div>
    </header>
    
    <main class="main">
      <div class="container">
        <section class="about">
          <h2>About</h2>
          <p>This is a placeholder landing page that will be redesigned by multiple AI agents in parallel.</p>
        </section>
        
        <section class="projects">
          <h2>Projects</h2>
          <p>Projects section placeholder</p>
        </section>
        
        <section class="contact">
          <h2>Contact</h2>
          <p>Contact section placeholder</p>
        </section>
      </div>
    </main>
  </div>
</template>

<style scoped>
.app {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
  line-height: 1.6;
  color: #333;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

.hero {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  padding: 100px 0;
  text-align: center;
}

.hero h1 {
  font-size: 3rem;
  margin-bottom: 1rem;
}

.hero p {
  font-size: 1.2rem;
  margin-bottom: 0.5rem;
}

.subtitle {
  opacity: 0.8;
  font-style: italic;
}

.main {
  padding: 60px 0;
}

section {
  margin-bottom: 60px;
}

section h2 {
  font-size: 2rem;
  margin-bottom: 1rem;
  color: #333;
}

section p {
  font-size: 1.1rem;
  color: #666;
}
</style>