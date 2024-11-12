-- Tabla subscriptions
CREATE TABLE subscriptions (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    price DECIMAL,
    duration VARCHAR(255),
    is_active BOOLEAN DEFAULT FALSE,
    features JSONB DEFAULT NULL,
    user_id VARCHAR(255) REFERENCES users(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Índice para búsquedas por usuario en suscripciones
CREATE INDEX idx_subscriptions_user_id ON subscriptions(user_id);