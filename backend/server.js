import mysql from 'mysql';
import express from 'express';
import cors from 'cors';

const app = express();
app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '', // Your MySQL root password
  database: 'receipt_db', // Database name
});

db.connect((err) => {
  if (err) {
    console.error('Error connecting to the database:', err);
    return;
  }
  console.log('Connected to MySQL database');
});

// Create (POST)
app.post('/create', (req, res) => {
  const sql = 'INSERT INTO receipts SET ?';
  const data = req.body;
  
  db.query(sql, data, (err, result) => {
    if (err) {
      return res.status(500).send(err);
    }
    res.status(201).send('Receipt created successfully');
  });
});

// Read (GET)
app.get('/get', (req, res) => {
  const sql = 'SELECT * FROM receipts';
  
  db.query(sql, (err, results) => {
    if (err) {
      return res.status(500).send(err);
    }
    res.json(results);
  });
});

// Update (PUT)
app.put('/update/:id', (req, res) => {
  const sql = 'UPDATE receipts SET ? WHERE id = ?';
  const data = req.body;
  const { id } = req.params;

  console.log('Updating item with ID:', id); // Log the ID
  console.log('Data to update:', data); // Log the data being passed to the query
  
  db.query(sql, [data, id], (err, result) => {
    if (err) {
      console.error('Error updating item:', err); // Log the error
      return res.status(500).send('Error updating item');
    }
    res.send('Receipt updated successfully');
  });
});

// Delete (DELETE)
app.delete('/delete/:id', (req, res) => {
  const sql = 'DELETE FROM receipts WHERE id = ?';
  const { id } = req.params;
  
  db.query(sql, id, (err, result) => {
    if (err) {
      return res.status(500).send(err);
    }
    res.send('Receipt deleted successfully');
  });
});

app.listen(3000, () => console.log('Server listening on port 3000'));
