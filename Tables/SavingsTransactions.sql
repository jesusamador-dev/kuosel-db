-- Tabla savings_transactions
CREATE TABLE savings_transactions (
    id SERIAL PRIMARY KEY,
    savings_id INT REFERENCES savings(id),
    amount DECIMAL NOT NULL,
    description VARCHAR(255),
    date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Índice para consultas de transacciones de ahorro
CREATE INDEX idx_savings_transactions_savings_id ON savings_transactions(savings_id);
