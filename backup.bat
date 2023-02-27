rem pg_dump -U postgres -W -c db_active > Backup022523.pgsql
psql -U postgres -W db_active < Backup022523.pgsql