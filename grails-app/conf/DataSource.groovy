dataSource {
    pooled = true
    jmxExport = true
    driverClassName = "com.mysql.cj.jdbc.Driver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
//    cache.region.factory_class = 'org.hibernate.cache.SingletonEhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.SingletonEhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
    flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}

// environment specific settings
environments {
    development {
        dataSource {
            pooled = true
            dbCreate = "update"
            url = "jdbc:mysql://db-mysql-nyc3-50382-do-user-1532664-0.b.db.ondigitalocean.com:25060/chem"
            driverClassName = "com.mysql.cj.jdbc.Driver"
            username = "doadmin"
            password = "zoe6omm0e56y5ffp"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://db-mysql-nyc3-50382-do-user-1532664-0.b.db.ondigitalocean.com:25060/chem"
            driverClassName = "com.mysql.cj.jdbc.Driver"
            username = "doadmin"
            password = "zoe6omm0e56y5ffp"
            properties {
               jmxEnabled = true
               initialSize = 5
               maxActive = 50
               minIdle = 5
               maxIdle = 25
               maxWait = 10000
               maxAge = 10 * 60000
               timeBetweenEvictionRunsMillis = 5000
               minEvictableIdleTimeMillis = 60000
               validationQuery = "SELECT 1"
               validationQueryTimeout = 3
               validationInterval = 15000
               testOnBorrow = true
               testWhileIdle = true
               testOnReturn = false
               jdbcInterceptors = "ConnectionState"
               defaultTransactionIsolation = java.sql.Connection.TRANSACTION_READ_COMMITTED
            }
        }
    }
}
