-- Gerado por Oracle SQL Developer Data Modeler 21.4.1.349.1605
--   em:        2022-04-20 12:12:41 BRT
--   site:      SQL Server 2012
--   tipo:      SQL Server 2012

CREATE SCHEMA Cadastro

GO


CREATE TABLE Cadastro.Aeroporto
(
    IdAeroporto INTEGER NOT NULL,
    CodAereo INTEGER NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Cidade VARCHAR(50) NOT NULL,
    Estado VARCHAR(50)
);
GO

ALTER TABLE Cadastro.Aeroporto
ADD CONSTRAINT Aeroporto_PK
    PRIMARY KEY CLUSTERED (IdAeroporto)
    WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON);
GO

CREATE TABLE Cadastro.Configuracoes
(
    IdConfiguracao INTEGER NOT NULL,
    Configuracao VARCHAR(50),
    IdTipoAviao INTEGER NOT NULL
);
GO

ALTER TABLE Cadastro.Configuracoes
ADD CONSTRAINT Configuracoes_PK
    PRIMARY KEY CLUSTERED (IdConfiguracao)
    WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON);
GO

CREATE TABLE Cadastro.TipoAviao
(
    IdTipoAviao INTEGER NOT NULL,
    NomeTipo VARCHAR(50) NOT NULL,
    Empresa VARCHAR(50)
);
GO

ALTER TABLE Cadastro.TipoAviao
ADD CONSTRAINT TipoAviao_PK
    PRIMARY KEY CLUSTERED (IdTipoAviao)
    WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON);
GO

ALTER TABLE Cadastro.Configuracoes
ADD CONSTRAINT FK_TipoAviao_Possue_Configuracoes
    FOREIGN KEY (IdTipoAviao)
    REFERENCES Cadastro.TipoAviao (IdTipoAviao) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              4
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE DATABASE                          0
-- CREATE DEFAULT                           0
-- CREATE INDEX ON VIEW                     0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE ROLE                              0
-- CREATE RULE                              0
-- CREATE SCHEMA                            0
-- CREATE SEQUENCE                          0
-- CREATE PARTITION FUNCTION                0
-- CREATE PARTITION SCHEME                  0
-- 
-- DROP DATABASE                            0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
