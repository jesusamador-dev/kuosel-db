-- Tabla couple_budget_users
CREATE TABLE couple_budget_users (
    budget_id INT REFERENCES couple_budgets(id),
    user_id VARCHAR(255) REFERENCES users(id),
    PRIMARY KEY (budget_id, user_id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Índice compuesto para búsquedas en presupuestos de pareja
CREATE INDEX idx_couple_budget_users ON couple_budget_users(budget_id, user_id);