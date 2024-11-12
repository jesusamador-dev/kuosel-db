-- Tabla savings
CREATE TABLE savings (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    target_amount DECIMAL NOT NULL,
    current_amount DECIMAL DEFAULT 0,
    start_date DATE,
    end_date DATE,
    user_id VARCHAR(255) REFERENCES users(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Índice para consultas de ahorros por usuario
CREATE INDEX idx_savings_user_id ON savings(user_id);