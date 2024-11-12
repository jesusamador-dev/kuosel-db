-- Tabla recurring_transactions
CREATE TABLE recurring_transactions (
    id SERIAL PRIMARY KEY,
    amount DECIMAL,
    description VARCHAR(255),
    start_date DATE,
    end_date DATE,
    frequency VARCHAR(255),
    type VARCHAR(255) CHECK (type IN ('income', 'expense')),
    category_id INT REFERENCES categories(id),
    user_id VARCHAR(255) REFERENCES users(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Índices para búsquedas
CREATE INDEX idx_recurring_transactions_user_id ON recurring_transactions(user_id);
CREATE INDEX idx_recurring_transactions_category_id ON recurring_transactions(category_id);
