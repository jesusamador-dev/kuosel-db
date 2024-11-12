-- Tabla users
CREATE TABLE users (
    id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    country VARCHAR(255),
    profile_image VARCHAR(255),
    subscription_type VARCHAR(255),
    subscription_status VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Índice para búsquedas por email
CREATE INDEX idx_users_email ON users(email);