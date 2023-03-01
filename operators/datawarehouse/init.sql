CREATE TABLE ubuntu_packages (
    distro_version TEXT,
    distro_year INTEGER,
    package TEXT,
    description TEXT,
    section TEXT,
    version TEXT,
    architecture TEXT,
    priority TEXT,
    essential TEXT,
    build_essential TEXT,
    maintainer TEXT,
    original_maintainer TEXT,
    size NUMERIC,
    installed_size NUMERIC,
    depends TEXT,
    pre_depends TEXT,
    recommends TEXT,
    conflicts TEXT,
    suggests TEXT,
    replaces TEXT,
    provides TEXT
);

COPY ubuntu_packages FROM '/ubuntu-packages.csv' DELIMITER ',' CSV HEADER;
