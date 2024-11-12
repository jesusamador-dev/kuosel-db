-- Tabla shared_budget_transactions
CREATE TABLE shared_budget_transactions (
    id SERIAL PRIMARY KEY,
    couple_budget_id INT REFERENCES couple_budgets(id),
    amount DECIMAL NOT NULL,
    description VARCHAR(255),
    date DATE NOT NULL,
    user_id VARCHAR(255) REFERENCES users(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Índices para búsquedas de transacciones compartidas
CREATE INDEX idx_shared_budget_transactions_budget_id ON shared_budget_transactions(couple_budget_id);
CREATE INDEX idx_shared_budget_transactions_user_id ON shared_budget_transactions(user_id);