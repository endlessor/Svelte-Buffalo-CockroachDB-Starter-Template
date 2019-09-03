CREATE TABLE bands (
	id UUID NOT NULL,
	name VARCHAR(255) NOT NULL,
	bio STRING NOT NULL,
	created_at TIMESTAMP NOT NULL,
	updated_at TIMESTAMP NOT NULL,
	CONSTRAINT "primary" PRIMARY KEY (id ASC),
	FAMILY "primary" (id, name, bio, created_at, updated_at)
);

CREATE TABLE members (
	id UUID NOT NULL,
	name VARCHAR(255) NOT NULL,
	instrument VARCHAR(255) NOT NULL,
	band_id UUID NOT NULL,
	created_at TIMESTAMP NOT NULL,
	updated_at TIMESTAMP NOT NULL,
	CONSTRAINT "primary" PRIMARY KEY (id ASC),
	FAMILY "primary" (id, name, instrument, band_id, created_at, updated_at)
);

CREATE TABLE schema_migration (
	version VARCHAR(14) NOT NULL,
	UNIQUE INDEX schema_migration_version_idx (version ASC),
	FAMILY "primary" (version, rowid)
);
