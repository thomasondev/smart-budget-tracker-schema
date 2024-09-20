--changeset thomasoncode:create-transaction-table
CREATE TABLE IF NOT EXISTS transaction (
    id BIGSERIAL PRIMARY KEY,
    description TEXT NOT NULL,
    amount NUMERIC NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    expense_cents BIGINT,
    income_cents BIGINT,
    category_id INTEGER REFERENCES category(id)
);