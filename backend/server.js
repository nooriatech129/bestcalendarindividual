const express = require("express");
const authRoutes = require("./authRoutes");

const app = express();
const PORT = process.env.PORT || 3000;

// middleware
app.use(express.json());

// routes
app.use("/auth", authRoutes);

app.get("/", (req, res) => {
  res.json({ message: "Server is running" });
});

app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});

