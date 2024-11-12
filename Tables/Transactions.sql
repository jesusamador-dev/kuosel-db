-- Tabla transactions
CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    amount DECIMAL,
    description VARCHAR(255),
    date DATE,
    category_id INT REFERENCES categories(id),
    user_id VARCHAR(255) REFERENCES users(id),
    type VARCHAR(255) CHECK (type IN ('income', 'expense')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Índices para optimizar consultas en transacciones
CREATE INDEX idx_transactions_user_id ON transactions(user_id);
CREATE INDEX idx_transactions_category_id ON transactions(category_id);
