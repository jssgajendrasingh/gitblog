databaseChangeLog = {

    changeSet(author: "gajendra (generated)", id: "1580905507121-1") {
        createTable(tableName: "login_details") {
            column(autoIncrement: "true", name: "id", type: "BIGINT") {
                constraints(primaryKey: "true")
            }

            column(name: "version", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "user_details_id", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "password", type: "VARCHAR(15)") {
                constraints(nullable: "false")
            }

            column(name: "user_name", type: "VARCHAR(10)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "gajendra (generated)", id: "1580905507121-2") {
        createTable(tableName: "user_details") {
            column(autoIncrement: "true", name: "id", type: "BIGINT") {
                constraints(primaryKey: "true")
            }

            column(name: "version", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "mobilenumber", type: "BIGINT") {
                constraints(nullable: "false")
            }

            column(name: "first_name", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "middle_name", type: "VARCHAR(255)")

            column(name: "password", type: "VARCHAR(15)") {
                constraints(nullable: "false")
            }

            column(name: "user_name", type: "VARCHAR(10)") {
                constraints(nullable: "false")
            }

            column(name: "occupation", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }

            column(name: "birth_date", type: "datetime(6)") {
                constraints(nullable: "false")
            }

            column(name: "last_name", type: "VARCHAR(255)")

            column(name: "email_id", type: "VARCHAR(255)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "gajendra (generated)", id: "1580905507121-3") {
        addUniqueConstraint(columnNames: "user_name", constraintName: "UK_7pqjkt6mwigem3tve6e8j2qlp", tableName: "user_details")
    }

    changeSet(author: "gajendra (generated)", id: "1580905507121-4") {
        addUniqueConstraint(columnNames: "user_name", constraintName: "UK_pb7kunfgpqq70sxn50on4y40i", tableName: "login_details")
    }

    changeSet(author: "gajendra (generated)", id: "1580905507121-5") {
        createIndex(indexName: "FK8g8l6rpcl4c0kplkh3t6ymk6f", tableName: "login_details") {
            column(name: "user_details_id")
        }
    }

    changeSet(author: "gajendra (generated)", id: "1580905507121-6") {
        addForeignKeyConstraint(baseColumnNames: "user_details_id", baseTableName: "login_details", constraintName: "FK8g8l6rpcl4c0kplkh3t6ymk6f", deferrable: "false", initiallyDeferred: "false", onDelete: "RESTRICT", onUpdate: "RESTRICT", referencedColumnNames: "id", referencedTableName: "user_details")
    }
}
databaseChangeLog = {

    changeSet(author: "gajendra (generated)", id: "1580966264873-1") {
        dropUniqueConstraint(constraintName: "UK_7pqjkt6mwigem3tve6e8j2qlp", tableName: "user_details")
    }

    changeSet(author: "gajendra (generated)", id: "1580966264873-2") {
        dropColumn(columnName: "password", tableName: "user_details")
    }

    changeSet(author: "gajendra (generated)", id: "1580966264873-3") {
        dropColumn(columnName: "user_name", tableName: "user_details")
    }
}

databaseChangeLog = {

    changeSet(author: "gajendra (generated)", id: "1580967434982-1") {
        dropForeignKeyConstraint(baseTableName: "login_details", constraintName: "FK8g8l6rpcl4c0kplkh3t6ymk6f")
    }

    changeSet(author: "gajendra (generated)", id: "1580967434982-2") {
        dropColumn(columnName: "user_details_id", tableName: "login_details")
    }
}
databaseChangeLog = {
}

