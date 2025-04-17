// URL base de la API
const API_BASE = "http://localhost:8000";

async function consultarFederacion() {
  const nombre = document.getElementById("jugador-fed").value;
  const res = await fetch(`${API_BASE}/jugador/federacion?nombre=${encodeURIComponent(nombre)}`);
  const data = await res.json();
  document.getElementById("resultado-fed").innerText = `Federación: ${data.federacion || 'No encontrada'}`;
}

async function consultarCampeonatos() {
  const nombre = document.getElementById("jugador-campeonatos").value;
  const res = await fetch(`${API_BASE}/jugador/campeonatos?nombre=${encodeURIComponent(nombre)}`);
  const data = await res.json();
  const ul = document.getElementById("lista-campeonatos");
  ul.innerHTML = "";
  data.forEach(c => {
    ul.innerHTML += `<li>${c.nombre}</li>`;
  });
}

async function consultarPartidasCampeonato() {
  const nombre = document.getElementById("nombre-campeonato").value;
  const res = await fetch(`${API_BASE}/campeonato/partidas?nombre=${encodeURIComponent(nombre)}`);
  const data = await res.json();
  const ul = document.getElementById("lista-partidas");
  ul.innerHTML = "";
  data.forEach(p => {
    ul.innerHTML += `<li>${p.nombre} - ${p.fecha} (Ronda ${p.ronda})</li>`;
  });
}

async function consultarJugadoresFederacion() {
  const nombre = document.getElementById("nombre-federacion").value;
  const res = await fetch(`${API_BASE}/federacion/jugadores?nombre=${encodeURIComponent(nombre)}`);
  const data = await res.json();
  const ul = document.getElementById("lista-jugadores-fed");
  ul.innerHTML = "";
  data.forEach(j => {
    ul.innerHTML += `<li>${j.nombre} (${j.titulo}, ELO: ${j.eloClasico})</li>`;
  });
}

async function consultarPartidasJugador() {
  const nombre = document.getElementById("jugador-partidas").value;
  const res = await fetch(`${API_BASE}/jugador/partidas?nombre=${encodeURIComponent(nombre)}`);
  const data = await res.json();
  const tabla = document.getElementById("tabla-partidas-jugador");
  tabla.innerHTML = `<tr><th>Partida</th><th>Color</th><th>Apertura</th><th>Fecha</th></tr>`;
  data.forEach(p => {
    tabla.innerHTML += `<tr><td>${p.partida}</td><td>${p.color}</td><td>${p.apertura}</td><td>${p.fecha}</td></tr>`;
  });
}

async function consultarEstadisticas() {
  const nombre = document.getElementById("jugador-estadisticas").value;
  const res = await fetch(`${API_BASE}/jugador/estadisticas?nombre=${encodeURIComponent(nombre)}`);
  const data = await res.json();
  document.getElementById("resultado-estadisticas").innerText = `Total: ${data.total}, Victorias: ${data.victorias}, Tasa: ${data.tasa_victoria.toFixed(2)}%`;
}

async function consultarAperturasFrecuentes() {
  const nombre = document.getElementById("jugador-aperturas").value;
  const res = await fetch(`${API_BASE}/jugador/aperturas?nombre=${encodeURIComponent(nombre)}`);
  const data = await res.json();
  const ul = document.getElementById("lista-aperturas");
  ul.innerHTML = "";
  data.forEach(a => {
    ul.innerHTML += `<li>${a.apertura}: ${a.veces} veces</li>`;
  });
}

async function consultarTasaVs() {
  const jugador = document.getElementById("jugador-a").value;
  const objetivo = document.getElementById("rival-o-fed").value;
  const tipo = document.getElementById("modo-comparacion").value;
  const res = await fetch(`${API_BASE}/jugador/vs?nombre=${encodeURIComponent(jugador)}&vs=${encodeURIComponent(objetivo)}&modo=${tipo}`);
  const data = await res.json();
  document.getElementById("resultado-vs").innerText = `Tasa vs ${objetivo}: ${data.tasa_victoria.toFixed(2)}% (${data.victorias}/${data.total})`;
}

async function consultarRivalFrecuente() {
  const nombre = document.getElementById("jugador-rival").value;
  const res = await fetch(`${API_BASE}/jugador/rival-frecuente?nombre=${encodeURIComponent(nombre)}`);
  const data = await res.json();
  document.getElementById("resultado-rival").innerText = `Rival más frecuente: ${data.rival} (${data.veces} partidas)`;
}

async function consultarAperturaMasExitosa() {
  const anio = document.getElementById("anio-apertura-exitosa").value;
  const res = await fetch(`${API_BASE}/apertura/mas-exitosa?anio=${encodeURIComponent(anio)}`);
  const data = await res.json();
  document.getElementById("resultado-apertura-exitosa").innerText = `Apertura más exitosa en ${anio}: ${data.apertura} (${data.tasa_exito.toFixed(2)}%)`;
}

async function consultarEstadisticasAperturasPorAnio() {
  const anio = document.getElementById("anio-aperturas-estadisticas").value;
  const apertura = document.getElementById("filtro-apertura").value;
  let url = `${API_BASE}/aperturas?anio=${encodeURIComponent(anio)}`;
  if (apertura) url += `&apertura=${encodeURIComponent(apertura)}`;

  const res = await fetch(url);
  const data = await res.json();

  const tabla = document.getElementById("tabla-aperturas-estadisticas");
  tabla.innerHTML = `<tr><th>Apertura</th><th>Total</th><th>Blancas</th><th>Negras</th><th>Tablas</th><th>% Victorias</th></tr>`;
  data.forEach(row => {
    tabla.innerHTML += `<tr><td>${row.apertura}</td><td>${row.total_partidas}</td><td>${row.victorias_blancas}</td><td>${row.victorias_negras}</td><td>${row.tablas}</td><td>${row.porcentaje_victoria_total.toFixed(2)}%</td></tr>`;
  });
}