-- Tabla shared_budgets
CREATE TABLE shared_budgets (
    budget_id INT REFERENCES budgets(id),
    user_id VARCHAR(255) REFERENCES users(id),
    PRIMARY KEY (budget_id, user_id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Índice compuesto para búsquedas en presupuestos compartidos
CREATE INDEX idx_shared_budgets ON shared_budgets(budget_id, user_id);