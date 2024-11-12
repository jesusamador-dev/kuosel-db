-- Tabla budgets
CREATE TABLE budgets (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    amount DECIMAL,
    start_date DATE,
    end_date DATE,
    user_id VARCHAR(255) REFERENCES users(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Índice para búsquedas por usuario
CREATE INDEX idx_budgets_user_id ON budgets(user_id);