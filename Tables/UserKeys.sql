-- Tabla user_keys
CREATE TABLE user_keys (
    id SERIAL PRIMARY KEY,
    user_id VARCHAR(255) REFERENCES users(id),
    public_key VARCHAR(2048),
    private_key VARCHAR(2048),
    expiry_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Índice para optimizar consultas en llaves de usuario
CREATE INDEX idx_user_keys_user_id ON user_keys(user_id);