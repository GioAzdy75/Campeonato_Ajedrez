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



// Organizadores
async function consultarAperturaPopular() {
  const nombre = document.getElementById("nombre-campeonato-apertura").value;
  const res = await fetch(`${API_BASE}/torneo/apertura-popular?campeonato=${encodeURIComponent(nombre)}`);
  const data = await res.json();
  const tabla = document.getElementById("tabla-apertura-popular");
  tabla.innerHTML = `<tr><th>Apertura</th><th>Veces</th></tr>`;
  data.forEach(ap => {
    tabla.innerHTML += `<tr><td>${ap.apertura}</td><td>${ap.veces}</td></tr>`;
  });
}

async function consultarFederacionesParticipantes() {
  const nombre = document.getElementById("nombre-campeonato-fed").value;
  const res = await fetch(`${API_BASE}/torneo/federaciones?campeonato=${encodeURIComponent(nombre)}`);
  const data = await res.json();
  const resultado = document.getElementById("resultado-federaciones");
  const tabla = document.getElementById("tabla-federaciones");
  resultado.innerHTML = `Cantidad: ${data.cantidad}`;
  tabla.innerHTML = `<tr><th>Federación</th></tr>`;
  data.federaciones.forEach(fed => {
    tabla.innerHTML += `<tr><td>${fed.federacion}</td></tr>`;
  });
}

async function consultarMejorJugador() {
  const nombre = document.getElementById("nombre-campeonato-mejor").value;
  const res = await fetch(`${API_BASE}/torneo/mejor-jugador?campeonato=${encodeURIComponent(nombre)}`);
  const data = await res.json();
  const tabla = document.getElementById("tabla-mejor-jugador");
  tabla.innerHTML = `<tr><th>Jugador</th><th>Victorias</th></tr>`;
  if (data.length > 0) {
    const maxVictorias = data[0].victorias;
    data.forEach(j => {
      if (j.victorias === maxVictorias) {
        tabla.innerHTML += `<tr><td>${j.jugador}</td><td>${j.victorias}</td></tr>`;
      }
    });
  } else {
    tabla.innerHTML += `<tr><td colspan='2'>No se encontraron resultados.</td></tr>`;
  }
}

async function consultarTasaEmpates() {
  const nombre = document.getElementById("nombre-campeonato-empates").value;
  const res = await fetch(`${API_BASE}/torneo/tasa-empates?campeonato=${encodeURIComponent(nombre)}`);
  const data = await res.json();
  const tabla = document.getElementById("tabla-tasa-empates");
  tabla.innerHTML = `<tr><th>Total</th><th>Empates</th><th>Tasa %</th></tr>`;
  if (data.length > 0) {
    const row = data[0];
    tabla.innerHTML += `<tr><td>${row.total}</td><td>${row.empates}</td><td>${row.tasa_empates.toFixed(2)}%</td></tr>`;
  } else {
    tabla.innerHTML += `<tr><td colspan='3'>No se encontraron partidas con empates.</td></tr>`;
  }
}


async function consultarTasaVs() {
  const jugador = document.getElementById("tasa-vs-jugador").value;
  const rival = document.getElementById("tasa-vs-rival").value;
  const res = await fetch(`${API_BASE}/jugador/tasa-vs?jugador=${encodeURIComponent(jugador)}&vs=${encodeURIComponent(rival)}`);
  const data = await res.json();
  const tbody = document.getElementById("tabla-tasa-vs-body");
  tbody.innerHTML = "";

  if (data.length > 0) {
    data.forEach(row => {
      tbody.innerHTML += `<tr>
        <td>${row.jugador}</td>
        <td>${row.contra}</td>
        <td>${row.total}</td>
        <td>${row.victorias}</td>
        <td>${row.empates}</td>
        <td>${row.derrotas}</td>
        <td>${row.tasa_victoria.toFixed(2)}%</td>
        <td>${row.tasa_empate.toFixed(2)}%</td>
        <td>${row.tasa_derrota.toFixed(2)}%</td>
      </tr>`;
    });
  } else {
    tbody.innerHTML = `<tr><td colspan="9">No se encontraron enfrentamientos.</td></tr>`;
  }
}

async function consultarRivalFrecuente() {
  const jugador = document.getElementById("rival-frecuente-jugador").value;
  const res = await fetch(`${API_BASE}/jugador/rival-frecuente?jugador=${encodeURIComponent(jugador)}`);
  const data = await res.json();
  const tabla = document.getElementById("tabla-rival-frecuente");
  tabla.innerHTML = `<tr><th>Rival</th><th>Veces</th></tr>`;
  data.forEach(row => {
    tabla.innerHTML += `<tr><td>${row.rival}</td><td>${row.veces}</td></tr>`;
  });
}


async function mostrarResumenBase() {
  const res = await fetch(`${API_BASE}/resumen-base`);
  const data = await res.json();
  const contenedor = document.getElementById("resumen-base");
  contenedor.innerHTML = `
    <p><strong>Partidas:</strong> ${data.partidas}</p>
    <p><strong>Jugadores:</strong> ${data.jugadores}</p>
    <p><strong>Campeonatos:</strong> ${data.campeonatos}</p>
  `;
}

mostrarResumenBase();


async function consultarEvolucionJugador() {
  const jugador = document.getElementById("evolucion-jugador").value;
  const limite = document.getElementById("evolucion-limite").value || 30;
  const res = await fetch(`${API_BASE}/jugador/evolucion?jugador=${encodeURIComponent(jugador)}&limite=${encodeURIComponent(limite)}`);
  let data = await res.json();
  const ctx = document.getElementById("grafico-evolucion").getContext("2d");

  data = data.reverse(); // invertir el orden siempre

  let puntaje = 0;
  const labels = [];
  const scores = [];

  data.forEach((evento) => {
    if (evento.resultado === "victoria") puntaje += 1;
    else if (evento.resultado === "derrota") puntaje -= 1;
    labels.push(evento.fecha);
    scores.push(puntaje);
  });

  if (window.evolucionChart) {
    window.evolucionChart.destroy();
  }

  window.evolucionChart = new Chart(ctx, {
    type: "line",
    data: {
      labels: labels,
      datasets: [{
        label: "Evolución acumulada",
        data: scores,
        borderColor: "blue",
        fill: false,
        tension: 0.2
      }]
    },
    options: {
      responsive: true,
      plugins: {
        legend: { position: 'top' }
      },
      scales: {
        y: { beginAtZero: false }
      }
    }
  });
}



//Basicas
async function consultarFederacionJugador() {
  const jugador = document.getElementById("federacion-jugador").value;
  const res = await fetch(`${API_BASE}/jugador/federacion?jugador=${encodeURIComponent(jugador)}`);
  const data = await res.json();
  const contenedor = document.getElementById("resultado-federacion");
  contenedor.innerHTML = data.federacion ? `Federación: <strong>${data.federacion}</strong>` : "No se encontró federación.";
}

async function consultarCampeonatosJugador() {
  const jugador = document.getElementById("campeonatos-jugador").value;
  const res = await fetch(`${API_BASE}/jugador/campeonatos?jugador=${encodeURIComponent(jugador)}`);
  const data = await res.json();
  const lista = document.getElementById("lista-campeonatos");
  lista.innerHTML = "";
  data.forEach(c => {
    const li = document.createElement("li");
    li.textContent = c.campeonato;
    lista.appendChild(li);
  });
}

async function consultarPartidasPorCampeonato() {
  const campeonato = document.getElementById("partidas-campeonato").value;
  const res = await fetch(`${API_BASE}/campeonato/partidas?campeonato=${encodeURIComponent(campeonato)}`);
  const data = await res.json();
  const tabla = document.getElementById("tabla-partidas-campeonato");
  tabla.innerHTML = `<tr><th>Nombre</th><th>Fecha</th><th>Ronda</th></tr>`;
  data.forEach(p => {
    tabla.innerHTML += `<tr><td>${p.partida}</td><td>${p.fecha}</td><td>${p.ronda}</td></tr>`;
  });
}

async function consultarJugadoresFederacion() {
  const federacion = document.getElementById("jugadores-federacion").value;
  const res = await fetch(`${API_BASE}/federacion/jugadores?federacion=${encodeURIComponent(federacion)}`);
  const data = await res.json();
  const tabla = document.getElementById("tabla-jugadores-federacion");
  tabla.innerHTML = `<tr><th>Jugador</th><th>Título</th><th>Elo</th></tr>`;
  data.forEach(j => {
    tabla.innerHTML += `<tr><td>${j.jugador}</td><td>${j.titulo}</td><td>${j.eloClasico}</td></tr>`;
  });
}
