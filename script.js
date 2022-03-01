
let board = ["", "", "", "", "", "", "", "", ""];
let currentPlayer = "X";
let gameActive = true;

const winConditions = [
  [0, 1, 2], [3, 4, 5], [6, 7, 8], 
  [0, 3, 6], [1, 4, 7], [2, 5, 8], 
  [0, 4, 8], [2, 4, 6]
];

const boardElement = document.getElementById("board");
const statusElement = document.getElementById("status");

function checkWinner() {
  for (let condition of winConditions) {
    const [a, b, c] = condition;
    if (board[a] && board[a] === board[b] && board[a] === board[c]) {
      statusElement.textContent = `Player ${board[a]} Wins!`;
      gameActive = false;
      return;
    }
  }
  if (!board.includes("")) {
    statusElement.textContent = "It's a Draw!";
    gameActive = false;
  }
}

function handleClick(index) {
  if (board[index] || !gameActive) return;
  board[index] = currentPlayer;
  renderBoard();
  checkWinner();
  currentPlayer = currentPlayer === "X" ? "O" : "X";
  if (gameActive) statusElement.textContent = `Player ${currentPlayer}'s Turn`;
}

function renderBoard() {
  boardElement.innerHTML = "";
  board.forEach((cell, index) => {
    const div = document.createElement("div");
    div.classList.add("cell");
    div.textContent = cell;
    div.addEventListener("click", () => handleClick(index));
    boardElement.appendChild(div);
  });
}

function restartGame() {
  board = ["", "", "", "", "", "", "", "", ""];
  currentPlayer = "X";
  gameActive = true;
  statusElement.textContent = `Player ${currentPlayer}'s Turn`;
  renderBoard();
}

renderBoard();
