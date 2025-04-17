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
async function consultarTasaPorColorCompleta() {
  const nombre = document.getElementById("jugador-color-tasa").value;
  const res = await fetch(`${API_BASE}/jugador/tasa-color?nombre=${encodeURIComponent(nombre)}`);
  const data = await res.json();

  const tabla = document.getElementById("tabla-color-tasa");
  const grafico = document.getElementById("grafico-color-tasa");
  const graficoTorta = document.getElementById("grafico-torta-color").getContext("2d");

  tabla.innerHTML = `<tr>
    <th>Color</th>
    <th>Total</th>
    <th>Victorias</th>
    <th>Empates</th>
    <th>Derrotas</th>
    <th>% Victorias</th>
    <th>% Empates</th>
    <th>% Derrotas</th>
  </tr>`;

  const labels = [];
  const datosVictorias = [];
  const datosEmpates = [];
  const datosDerrotas = [];

  let totalGlobal = 0;
  let totalVictorias = 0;
  let totalEmpates = 0;
  let totalDerrotas = 0;

  data.forEach(row => {
    const colorRow = row.color === "blanca" ? "#e3fceb" : "#e3ecfc";
    tabla.innerHTML += `<tr style="background-color: ${colorRow};">
      <td>${row.color}</td>
      <td>${row.total}</td>
      <td>${row.victorias}</td>
      <td>${row.empates}</td>
      <td>${row.derrotas}</td>
      <td>${row.tasa_victoria.toFixed(2)}%</td>
      <td>${row.tasa_empate.toFixed(2)}%</td>
      <td>${row.tasa_derrota.toFixed(2)}%</td>
    </tr>`;

    labels.push(row.color);
    datosVictorias.push(row.tasa_victoria);
    datosEmpates.push(row.tasa_empate);
    datosDerrotas.push(row.tasa_derrota);

    totalGlobal += row.total;
    totalVictorias += row.victorias;
    totalEmpates += row.empates;
    totalDerrotas += row.derrotas;
  });

  // Gráfico de barras
  const ctx = document.getElementById("grafico-color-tasa").getContext("2d");
  if (window.graficoColor) window.graficoColor.destroy();
  window.graficoColor = new Chart(ctx, {
    type: "bar",
    data: {
      labels: labels,
      datasets: [
        {
          label: "% Victorias",
          backgroundColor: "#4caf50",
          data: datosVictorias
        },
        {
          label: "% Empates",
          backgroundColor: "#ffc107",
          data: datosEmpates
        },
        {
          label: "% Derrotas",
          backgroundColor: "#f44336",
          data: datosDerrotas
        }
      ]
    },
    options: {
      responsive: true,
      plugins: {
        legend: { position: "top" },
        title: {
          display: true,
          text: "Tasa de resultados por color"
        }
      },
      scales: {
        y: {
          beginAtZero: true,
          max: 100,
          ticks: {
            callback: value => value + "%"
          }
        }
      }
    }
  });

  // Gráfico de torta
  if (window.graficoTorta) window.graficoTorta.destroy();
  window.graficoTorta = new Chart(graficoTorta, {
    type: "pie",
    data: {
      labels: ["Victorias", "Empates", "Derrotas"],
      datasets: [{
        data: [totalVictorias, totalEmpates, totalDerrotas],
        backgroundColor: ["#4caf50", "#ffc107", "#f44336"]
      }]
    },
    options: {
      plugins: {
        title: {
          display: true,
          text: "Distribución global de resultados"
        },
        legend: {
          position: "bottom"
        }
      }
    }
  });
}
