INSERT INTO app_user (email, password_hash, role)
VALUES ('admin@tcm.fr', '$argon2id$v=19$m=16384,t=2,p=1$EeEmYnKzV+S9ObztbNHLFg$mE/lV9VOq/YcxETggEgJ/I2gxLM8e9TowdOpWe49eWo', 'ADMIN');
-- Ajouter une ligne par élève :
-- INSERT INTO app_user (email, password_hash, role)
-- VALUES ('eleve@email.com', '<hash_argon2id_user>', 'USER');
