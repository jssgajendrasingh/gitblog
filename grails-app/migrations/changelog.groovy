databaseChangeLog = {

    changeSet(author: "gajendra (generated)", id: "1584345789052-1") {
        createTable(tableName: "address") {
            column(autoIncrement: "true", name: "id", type: "BIGINT") {
                constraints(primaryKey: "true", primaryKeyName: "addressPK")
            }

            column(name: "version", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "house_number", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "road_name", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "area_name", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "gajendra (generated)", id: "1584345789052-2") {
        createTable(tableName: "address_user") {
            column(name: "user_id", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "address_id", type: "BIGINT") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "gajendra (generated)", id: "1584345789052-3") {
        createTable(tableName: "blog") {
            column(autoIncrement: "true", name: "id", type: "BIGINT") {
                constraints(primaryKey: "true", primaryKeyName: "blogPK")
            }

            column(name: "version", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "user_blog", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "user_id", type: "BIGINT") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "gajendra (generated)", id: "1584345789052-4") {
        createTable(tableName: "role") {
            column(autoIncrement: "true", name: "id", type: "BIGINT") {
                constraints(primaryKey: "true", primaryKeyName: "rolePK")
            }

            column(name: "version", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "authority", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "gajendra (generated)", id: "1584345789052-5") {
        createTable(tableName: "user") {
            column(autoIncrement: "true", name: "id", type: "BIGINT") {
                constraints(primaryKey: "true", primaryKeyName: "userPK")
            }

            column(name: "version", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "first_name", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "password_expired", type: "BOOLEAN") {
                constraints(nullable: "false")
            }

            column(name: "user_name", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "account_expired", type: "BOOLEAN") {
                constraints(nullable: "false")
            }

            column(name: "email_id", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "mobile_number", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "account_locked", type: "BOOLEAN") {
                constraints(nullable: "false")
            }

            column(name: "password", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "occupation", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "last_name", type: "VARCHAR(255)")

            column(name: "enabled", type: "BOOLEAN") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "gajendra (generated)", id: "1584345789052-6") {
        createTable(tableName: "user_addresses") {
            column(name: "address_id", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "user_id", type: "BIGINT") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "gajendra (generated)", id: "1584345789052-7") {
        createTable(tableName: "user_role") {
            column(name: "user_id", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "role_id", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "version", type: "BIGINT") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "gajendra (generated)", id: "1584345789052-8") {
        addPrimaryKey(columnNames: "user_id, role_id", constraintName: "user_rolePK", tableName: "user_role")
    }

    changeSet(author: "gajendra (generated)", id: "1584345789052-9") {
        addUniqueConstraint(columnNames: "authority", constraintName: "UC_ROLEAUTHORITY_COL", tableName: "role")
    }

    changeSet(author: "gajendra (generated)", id: "1584345789052-10") {
        addUniqueConstraint(columnNames: "user_name", constraintName: "UC_USERUSER_NAME_COL", tableName: "user")
    }

    changeSet(author: "gajendra (generated)", id: "1584345789052-11") {
        addForeignKeyConstraint(baseColumnNames: "user_id", baseTableName: "user_role", constraintName: "FK859n2jvi8ivhui0rl0esws6o", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "user")
    }

    changeSet(author: "gajendra (generated)", id: "1584345789052-12") {
        addForeignKeyConstraint(baseColumnNames: "role_id", baseTableName: "user_role", constraintName: "FKa68196081fvovjhkek5m97n3y", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "role")
    }

    changeSet(author: "gajendra (generated)", id: "1584345789052-13") {
        addForeignKeyConstraint(baseColumnNames: "address_id", baseTableName: "user_addresses", constraintName: "FKd2jqv60joaqmw8h94mdpx0f55", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "address")
    }

    changeSet(author: "gajendra (generated)", id: "1584345789052-14") {
        addForeignKeyConstraint(baseColumnNames: "user_id", baseTableName: "address_user", constraintName: "FKe9lmb3rbwq0goy6h1c129lodw", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "user")
    }

    changeSet(author: "gajendra (generated)", id: "1584345789052-15") {
        addForeignKeyConstraint(baseColumnNames: "user_id", baseTableName: "user_addresses", constraintName: "FKfm6x520mag23hvgr1oshaut8b", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "user")
    }

    changeSet(author: "gajendra (generated)", id: "1584345789052-16") {
        addForeignKeyConstraint(baseColumnNames: "address_id", baseTableName: "address_user", constraintName: "FKfmtj9b1cg7vb54nrgjnm8hqdp", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "address")
    }

    changeSet(author: "gajendra (generated)", id: "1584345789052-17") {
        addForeignKeyConstraint(baseColumnNames: "user_id", baseTableName: "blog", constraintName: "FKpxk2jtysqn41oop7lvxcp6dqq", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "user")
    }
}
